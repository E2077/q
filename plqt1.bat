@echo off
chcp 65001
call ..\..\_internal\setenv.bat
echo 软件所在路径尽量不要有空格,不然无法识别
setlocal enabledelayedexpansion
REM 获取拖入的文件夹路径
if "%~1"=="" (
    set /p "input_folder=拖入文件夹进行处理: "
) else (
    set "input_folder=%~1"
)
for %%i in ("%input_folder%\*.mp4") do (
    set "video_name=%%~ni"
    set "output_dir=!input_folder!\!video_name!"
    mkdir "!output_dir!" 2>nul
    "%PYTHON_EXECUTABLE%" "%DFL_ROOT%\main.py" videoed extract-video ^
        --input-file "%%i" ^
        --output-dir "!output_dir!" ^
        --fps 10
)
echo 操作完成
pause
