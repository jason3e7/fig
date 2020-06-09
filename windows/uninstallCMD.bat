@echo off

rem Folder
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\cmd" /f

rem Directory\Background
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\cmd" /f

