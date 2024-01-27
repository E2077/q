@echo off
chcp 65001
call ..\..\_internal\setenv.bat
echo 软件所在路径尽量不要有空格,不然无法识别
setlocal enabledelayedexpansion
REM 获取拖入的文件夹路径
if "%~1"=="" (
    set /p "input_folder=切脸文件夹：: "
) else (
    set "input_folder=%~1"
)

REM 获取用户选择的 detector
set "detector_choice="
set /p "detector_choice=切脸方式：（1.自动, 2.手动，默认自动）: "
if not defined detector_choice set "detector_choice=s3fd"

REM 将数字映射到相应的 detector 选项
if !detector_choice! equ 1 (
    set "detector_option=s3fd"
) else if !detector_choice! equ 2 (
    set "detector_option=manual"
) else (
    echo 使用默认
    set "detector_option=s3fd"
)

REM 构建输出目录
set "output_folder=!input_folder!\aligned"

mkdir "!output_folder!" 2>nul

"%PYTHON_EXECUTABLE%" "%DFL_ROOT%\main.py" extract ^
    --input-dir "!input_folder!" ^
    --output-dir "!output_folder!" ^
    --detector !detector_option!

pause
