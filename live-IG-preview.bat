@echo off
setlocal EnableExtensions DisableDelayedExpansion
if /i "%~1"=="--help" goto help
if /i "%~1"=="-h" goto help
set "root=%~dp0"
set "port=%~1"
if not defined port set "port=4000"
if not "%~2"=="" goto help
echo(%port%| findstr /r /x "[0-9][0-9]*" >nul || goto help
if not "%port:~5%"=="" goto help
rem Strip leading zeros before SET /A interprets the port as an octal number.
:stripzero
if "%port:~0,1%"=="0" if not "%port%"=="0" (
  set "port=%port:~1%"
  goto stripzero
)
if %port% LSS 1 goto help
if %port% GTR 65535 goto help

if "%LIVE_IG_PREVIEW_UPDATED%"=="1" goto updated
if "%LIVE_IG_PREVIEW_NO_UPDATE%"=="1" goto updated
echo Checking for preview script updates...
where curl.exe >nul 2>&1 || goto updatefailed
set "candidate=%root%.live-IG-preview-%RANDOM%-%RANDOM%.bat"
curl.exe --fail --silent --show-error --location --proto "=https" --connect-timeout 3 --max-time 10 "https://raw.githubusercontent.com/medcomdk/fhir-publishing/main/helpers/live-ig-preview.bat" --output "%candidate%"
if errorlevel 1 goto updatefailed
set "firstline="
set /p "firstline=" < "%candidate%"
if /i not "%firstline%"=="@echo off" goto updatefailed
fc /b "%~f0" "%candidate%" >nul 2>&1
if not errorlevel 1 goto uptodate
rem Parse this entire block before replacing the running batch file, then hand off.
(
  move /y "%candidate%" "%~f0" >nul
  if errorlevel 1 (
    echo Could not install the update; continuing with the local script.
    del /q "%candidate%" >nul 2>&1
    goto updated
  )
  echo Preview script updated. Restarting...
  set "LIVE_IG_PREVIEW_UPDATED=1"
  "%~f0" %*
  exit /b
)
:uptodate
echo Preview script is up to date.
del /q "%candidate%" >nul 2>&1
goto updated
:updatefailed
echo Update unavailable or invalid; continuing with the local script.
if defined candidate if exist "%candidate%" del /q "%candidate%" >nul 2>&1
:updated
set "LIVE_IG_PREVIEW_UPDATED="
set "pages=%root%temp\pages"
set "includes=%pages%\_includes"
set "source_dir=%root%input\pagecontent"
if not exist "%pages%\_config.yml" goto missingbuild
if not exist "%includes%\" goto missingbuild
where jekyll >nul 2>&1 || goto missingjekyll
pushd "%source_dir%" || exit /b 1
rem PUSHD can map a UNC path to a drive; match FOR /R's resolved prefix.
set "source_dir=%CD%"
call :sync
set /a reloadport=port+1
if %port% EQU 65535 set /a reloadport=port-1
set "server_title=MedCom-IG-preview-%RANDOM%-%RANDOM%"
rem Use a separate console so Jekyll's output stays visible while this window watches.
start "%server_title%" /d "%root%" cmd /c jekyll serve --source "%pages%" --destination "%root%temp\preview" --host 127.0.0.1 --port %port% --livereload --livereload-port %reloadport%
echo Preview: http://127.0.0.1:%port%/
echo Watching input\pagecontent every second. Save to refresh the preview.
echo New/deleted pages, navigation, and FHIR changes need a full Publisher build.
echo Press Q in this window to stop the watcher and preview server.
:watch
choice /c WQ /n /t 1 /d W >nul
if errorlevel 2 goto stop
call :sync
goto watch
:stop
taskkill /fi "WINDOWTITLE eq %server_title%*" /t /f >nul 2>&1
popd
exit /b 0

:sync
for /r %%F in (*.md *.xml *.html *.xhtml) do call :syncfile "%%F"
exit /b
:syncfile
rem Resolve the relative path without delayed expansion (paths may contain !).
set "relative=%~1"
call set "relative=%%relative:%source_dir%\=%%"
set "destination=%includes%\%relative%"
fc /b "%~1" "%destination%" >nul 2>&1
if not errorlevel 1 exit /b
for %%D in ("%destination%") do if not exist "%%~dpD" mkdir "%%~dpD"
if not exist "%destination%" echo New include: %relative%; new pages need a Publisher build.
copy /y "%~1" "%destination%" >nul && echo Updated: %relative%
exit /b

:missingbuild
echo Run a full Publisher build first ^(_build.bat^).
exit /b 1
:missingjekyll
echo jekyll was not found on PATH; use the environment used for your IG build.
exit /b 1
:help
echo Usage: live-IG-preview.bat [port]
echo Watches input\pagecontent and serves the preview ^(default port: 4000^).
echo Run a full Publisher build first. Press Q to stop.
exit /b
