@echo off
for %%a in (*.mp3) do (
   echo processing "%%a"
      for /f "tokens=1 delims=-" %%b in ("%%~nxa") do (
         md "%%b" 2>nul
         move "%%a" "%%b" >nul
      )
)
pause