@echo off

set modname=sato_additional_equipment_distributor_new
set year=%DATE:~10,4%
set month=%DATE:~4,2%
set day=%DATE:~7,2%
set ymddate=%year%-%month%-%day%

set paddedtime=%TIME: =0%
set hour=%paddedtime:~0,2%
set min=%paddedtime:~3,2%
set sec=%paddedtime:~6,2%
set hmstime=%hour%%min%%sec%

echo.
echo Preserving old version, if any, in data directory...
echo.

REM Make a directory for old versions, if necessary, silencing error output
mkdir "%~dp0\old_versions" > nul 2> nul
move "%datadir%\%modname%*.zip" "%~dp0\old_versions\%modname%-%ymddate%-%hmstime%.zip"

echo.
echo Installing new version, if any, to data directory...
echo.

move "%~dp0\dist\%modname%*.zip" "%datadir%\" 2> nul

echo Done.

pause