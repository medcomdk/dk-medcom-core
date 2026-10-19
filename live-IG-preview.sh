#!/usr/bin/env bash
# Preview narrative edits using an existing Publisher build.
set -euo pipefail

# Increase this integer whenever publishing an updated script.
PREVIEW_SCRIPT_VERSION=2

root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
port="${1:-4000}"
if [[ "$port" == "--help" || "$port" == "-h" ]]; then
  echo "Usage: bash live-IG-preview.sh [port]"
  echo "Watches input/pagecontent and serves the preview (default port: 4000)."
  echo "Run a full Publisher build first. Press Ctrl+C to stop."
  exit 0
fi
if [[ $# -gt 1 || ! "$port" =~ ^[0-9]{1,5}$ ]]; then
  echo "Usage: bash live-IG-preview.sh [port]" >&2
  exit 1
fi
port=$((10#$port))
if (( port < 1 || port > 65535 )); then
  echo "Port must be between 1 and 65535." >&2
  exit 1
fi

# Download beside the script so replacement is atomic on the same filesystem.
# The environment guard prevents a second check when restarting after an update.
if [[ "${LIVE_IG_PREVIEW_UPDATED:-0}" != 1 && "${LIVE_IG_PREVIEW_NO_UPDATE:-0}" != 1 ]]; then
  echo "Checking for preview script updates..."
  if command -v curl >/dev/null 2>&1 && candidate=$(mktemp "$root/.live-IG-preview.XXXXXX"); then
    if curl --fail --silent --show-error --location --proto '=https' \
      --connect-timeout 3 --max-time 10 \
      'https://raw.githubusercontent.com/medcomdk/fhir-publishing/main/helpers/live-ig-preview.sh' \
      --output "$candidate" && head -n 1 "$candidate" | grep -q '^#!/.*bash' \
      && bash -n "$candidate"; then
      if ! cmp -s "${BASH_SOURCE[0]}" "$candidate"; then
        remote_version=$(sed -n 's/^PREVIEW_SCRIPT_VERSION=\([0-9]\{1,9\}\)$/\1/p' "$candidate" | head -n 1)
        if [[ -z "$remote_version" ]]; then
          echo "Hosted script has no version; keeping local version $PREVIEW_SCRIPT_VERSION."
        elif (( 10#$remote_version <= PREVIEW_SCRIPT_VERSION )); then
          echo "Hosted version $remote_version is not newer; keeping local version $PREVIEW_SCRIPT_VERSION."
        elif chmod +x "$candidate" && mv -f -- "$candidate" "${BASH_SOURCE[0]}"; then
          echo "Preview script updated. Restarting..."
          exec env LIVE_IG_PREVIEW_UPDATED=1 bash "${BASH_SOURCE[0]}" "$@"
        else
          echo "Could not install the update; continuing with the local script." >&2
        fi
      else
        echo "Preview script is up to date."
      fi
    else
      echo "Update unavailable or invalid; continuing with the local script." >&2
    fi
    rm -f -- "$candidate"
  else
    echo "Update check unavailable; continuing with the local script." >&2
  fi
fi
unset LIVE_IG_PREVIEW_UPDATED

pages="$root/temp/pages"
includes="$pages/_includes"
source_dir="$root/input/pagecontent"
if [[ ! -f "$pages/_config.yml" || ! -d "$includes" ]]; then
  echo "Run a full Publisher build first (bash _build.sh, option 2)." >&2
  exit 1
fi
if ! command -v jekyll >/dev/null 2>&1; then
  echo "jekyll was not found on PATH; use the environment used for your IG build." >&2
  exit 1
fi

sync_content() {
  local source_file relative destination
  while IFS= read -r -d '' source_file; do
    relative="${source_file#"$source_dir/"}"
    destination="$includes/$relative"
    if [[ ! -f "$destination" ]]; then
      echo "New include: $relative; new pages need a Publisher build."
    fi
    if ! cmp -s "$source_file" "$destination"; then
      mkdir -p -- "$(dirname -- "$destination")"
      # Retry on the next poll if an editor replaces a file during a save.
      if cp -- "$source_file" "$destination"; then
        echo "Updated: $relative"
      fi
    fi
  done < <(find "$source_dir" -type d -name '.*' -prune -o -type f \
    ! -name '.*' \( -name '*.md' -o -name '*.xml' -o -name '*.html' -o -name '*.xhtml' \) -print0)
}

server_pid=""
cleanup() {
  if [[ -n "$server_pid" ]]; then
    # Jekyll handles SIGINT gracefully; SIGTERM prints a Ruby backtrace.
    kill -INT "$server_pid" 2>/dev/null || true
    wait "$server_pid" 2>/dev/null || true
    echo "Preview stopped."
  fi
}
trap cleanup EXIT
trap 'exit 130' INT
trap 'exit 143' TERM

sync_content
echo "Preview: http://127.0.0.1:$port/"
echo "Watching input/pagecontent every 0.5 seconds. Save to refresh the preview."
echo "New/deleted pages, navigation, and FHIR changes need a full Publisher build."
echo "Press Ctrl+C to stop."

# A separate destination leaves Publisher output intact.
cd -- "$root"
jekyll serve --source "$pages" --destination "$root/temp/preview" \
  --host 127.0.0.1 --port "$port" --livereload --livereload-port "$((port + (port < 65535 ? 1 : -1)))" &
server_pid=$!

while kill -0 "$server_pid" 2>/dev/null; do
  sleep 0.5
  sync_content
done
wait "$server_pid"
