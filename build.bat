ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 to select your task, or 3 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Build Debug
ECHO 2 - Build Release
ECHO 3 - EXIT
ECHO.
SET /P M=Type 1, 2, or 3 then press ENTER:
IF %M%==1 GOTO DEBUGSETTING
IF %M%==2 GOTO RELEASESETTING
IF %M%==3 GOTO EOF
:DEBUGSETTING
"%windir%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe" "%~dp0NaniteCore.sln" /t:Build /p:Configuration=Debug
GOTO MENU
:RELEASESETTING
"%windir%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe" "%~dp0\NaniteCore.sln" /t:Build /p:Configuration=Release
GOTO MENU