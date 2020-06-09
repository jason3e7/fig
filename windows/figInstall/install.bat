@echo off

mkdir "C:\cmd"
copy fig.bat "C:\cmd"
copy icon.ico "C:\cmd"

SET figPath=C:\cmd\fig.bat

@reg add "HKEY_CLASSES_ROOT\Folder\shell\fig"         /t REG_SZ /v "" /d "FIG"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\fig"         /t REG_SZ /v "Icon" /d "C:\cmd\icon.ico" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\fig\command" /t REG_SZ /v "" /d "cmd.exe /s /k pushd \"%%L\" && %figPath%" /f

@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\fig"         /t REG_SZ /v "" /d "FIG" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\fig"         /t REG_SZ /v "Icon" /d "C:\cmd\icon.ico" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\fig\command" /t REG_SZ /v "" /d "cmd.exe /s /k pushd \"%%V\" && %figPath%" /f

pause