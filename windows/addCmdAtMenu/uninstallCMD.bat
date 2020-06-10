@echo off

rem Folder
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\runas" /f

rem Directory\Background
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\runas" /f

pause
