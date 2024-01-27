@echo off
chcp 65001
call ..\..\_internal\setenv.bat
echo 软件所在路径尽量不要有空格,不然无法识别
setlocal enabledelayedexpansion
REM 获取拖入的文件夹路径

if "%~1"=="" (
    set /p "input_dir=拖入文件夹进行排序: "
) else (
    set "input_dir=%~1"
)

"%PYTHON_EXECUTABLE%" "%DFL_ROOT%\main.py" sort ^
    --input-dir "%input_dir%"

pause
