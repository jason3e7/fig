@echo off

rmdir "C:\cmd" /s /q

rem Folder
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\fig" /f

rem Directory\Background
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\fig" /f

pause