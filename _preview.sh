#!/usr/bin/env bash
# Keep the original preview command working.
exec bash "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)/live-IG-preview.sh" "$@"
