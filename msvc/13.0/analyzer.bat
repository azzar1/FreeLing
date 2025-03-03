
@Echo OFF

set BASEDIR=%~dp0

set OLDPATH=%PATH%
set PATH=%PATH%;%BASEDIR%\..\dependencies\boost\lib\x86;%BASEDIR%\..\dependencies\boost\lib\x64;%BASEDIR%\..\dependencies\zlib\lib\x86;%BASEDIR%\..\dependencies\zlib\lib\x64;%BASEDIR%\..\dependencies\icu\lib\x86;%BASEDIR%\..\dependencies\icu\lib\x64;%BASEDIR%\..\lib;%BASEDIR%\..\bin

set FREELINGSHARE=%BASEDIR%..\data

set cmdline=

:loop
if "%~1" EQU "" goto :endloop

  set cmdline=%cmdline% %~1

  if "%~1" NEQ "-f" goto :endif
     SHIFT 
     if exist %~1 goto :else
       set cmdline=%cmdline% %FREELINGSHARE%\config\%~1  
       goto :endif
     :else       
       set cmdline=%cmdline% %~1
  :endif

  SHIFT

  goto :loop
:endloop

analyzer.exe %cmdline%

SET PATH=%OLDPATH%
SET BASEDIR=
SET FREELINGSHARE=
SET cmdline=