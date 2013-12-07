@echo off

echo pak96.comic open-source repository compiler for Windows
echo =======================================================
echo.
echo This batch compiles this repository into a new folder
echo called compiled, makeobj.exe must be in root folder.
echo.
echo Checking for makeobj.exe...
echo.
if not exist .\makeobj.exe goto abort

rem Create folder for *.paks or delete all old paks if folder already exists
if exist .\compiled\ (del .\compiled\*.pak) else (md compiled)

echo.
echo -------------------------------------------------------
echo Compiling air transport...
makeobj.exe pak96 ./compiled/ ./air/buildings/
makeobj.exe pak96 ./compiled/ ./air/signs/
makeobj.exe pak96 ./compiled/ ./air/vehicles/
makeobj.exe pak96 ./compiled/ ./air/ways/

echo.
echo -------------------------------------------------------
echo Compiling city and lanscape...
makeobj.exe pak96 ./compiled/ ./city-and-landscape/buildings/com/
makeobj.exe pak96 ./compiled/ ./city-and-landscape/buildings/cur/
makeobj.exe pak96 ./compiled/ ./city-and-landscape/buildings/res/
makeobj.exe pak96 ./compiled/ ./city-and-landscape/rivers/

echo.
echo -------------------------------------------------------
echo Compiling factories...
makeobj.exe pak96 ./compiled/ ./factory/

echo.
echo -------------------------------------------------------
echo Compiling maglevs...
makeobj.exe pak96 ./compiled/ ./maglev/buildings/
makeobj.exe pak96 ./compiled/ ./maglev/signs/
makeobj.exe pak96 ./compiled/ ./maglev/vehicles/
makeobj.exe pak96 ./compiled/ ./maglev/ways/
makeobj.exe pak96 ./compiled/ ./maglev/ways/bridges/
makeobj.exe pak96 ./compiled/ ./maglev/ways/elevated/
makeobj.exe pak96 ./compiled/ ./maglev/ways/tunnels/

echo.
echo -------------------------------------------------------
echo Compiling others...
makeobj.exe pak96 ./compiled/ ./other/powerlines/
makeobj.exe pak96 ./compiled/ ./other/powerlines/bridges/
makeobj.exe pak96 ./compiled/ ./other/powerlines/tunnels/

echo.
echo -------------------------------------------------------
echo Compiling railroad...
makeobj.exe pak96 ./compiled/ ./rail/buildings/
makeobj.exe pak96 ./compiled/ ./rail/signs/
makeobj.exe pak96 ./compiled/ ./rail/vehicles/
makeobj.exe pak96 ./compiled/ ./rail/wayobjs/
makeobj.exe pak96 ./compiled/ ./rail/ways/bridges/

echo.
echo -------------------------------------------------------
echo Compiling road transport...
makeobj.exe pak96 ./compiled/ ./road/vehicles/

echo.
echo -------------------------------------------------------
echo Compiling trams...
makeobj.exe pak96 ./compiled/ ./tram/vehicles/
makeobj.exe pak96 ./compiled/ ./tram/wayobjs/

echo.
echo -------------------------------------------------------
echo Compiling naval transport...
makeobj.exe pak96 ./compiled/ ./water/buildings/
makeobj.exe pak96 ./compiled/ ./water/vehicles/
makeobj.exe pak96 ./compiled/ ./water/ways/
makeobj.exe pak96 ./compiled/ ./water/ways/bridges/
makeobj.exe pak96 ./compiled/ ./water/ways/tunnels/

echo.
echo =====================
echo Compilation Complete!
echo =====================
echo.

goto :end

:abort
echo ERROR: makeobj not found on root folder.

:end
pause
