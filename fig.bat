@echo off
setlocal enableDelayedExpansion

echo ### config ###
set datef=%date:~0,4%%date:~5,2%%date:~8,2%

set output=index.md
set tags=\#temp.
set to=\#to:temp.

echo filename:!output!
echo mtime:!datef!
echo tags:!tags!
echo to:!to!

pause

if exist !output! (
  echo ### !output! exist ###
  exit /b 1  
)

echo # !datef! #> !output!

::build "array" of folders
set folderCnt=0
for /f "eol=: delims=" %%F in ('dir /b /ad *') do (
  set /a folderCnt+=1
  set "folder!folderCnt!=%%F"
)

::print menu
for /l %%N in (1 1 %folderCnt%) do (
  echo * \#rating:80, \#type:pdir, \#mtime:!datef!. [!folder%%N!]^(!folder%%N!^)>> !output!
  echo   * !tags!>> !output!
  echo   * !to!>> !output!
)

set fileCnt=0
for /f "eol=: delims=" %%F in ('dir /b /a-d *') do (
  set /a fileCnt+=1
  set "file!fileCnt!=%%F"
  set "filename!fileCnt!=%%~nF"
)

for /l %%N in (1 1 %fileCnt%) do (
  echo * \#rating:80, \#type:file, \#mtime:!datef!. [!filename%%N!]^(!file%%N!^)>> !output!
  echo   * !tags!>> !output!
  echo   * !to!>> !output!
)

echo ### fig finish ###