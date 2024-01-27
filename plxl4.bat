@echo off
chcp 65001
call ..\..\_internal\setenv.bat
echo 软件所在路径尽量不要有空格,不然无法识别
setlocal enabledelayedexpansion
REM 获取拖入的文件夹路径
if "%~1"=="" (
    set /p "input_dir=拖入工作目录: "
) else (
    set "input_dir=%~1"
)

REM 获取用户模型选择，默认为1 (SAEHD)
set /p "model_choice=请选择模型 (1.SAEHD, 2.AMP，默认为 SAEHD): "
set "model_name=SAEHD"

if "%model_choice%"=="2" set "model_name=AMP"

REM 判断并创建子目录
if not exist "%input_dir%\data_src\aligned" mkdir "%input_dir%\data_src\aligned"
if not exist "%input_dir%\data_dst\aligned" mkdir "%input_dir%\data_dst\aligned"
if not exist "%input_dir%\pretrain_faces" mkdir "%input_dir%\pretrain_faces"
if not exist "%input_dir%\model" mkdir "%input_dir%\model"

"%PYTHON_EXECUTABLE%" "%DFL_ROOT%\main.py" train ^
    --training-data-src-dir "%input_dir%\data_src\aligned" ^
    --training-data-dst-dir "%input_dir%\data_dst\aligned" ^
    --pretraining-data-dir "%input_dir%\pretrain_faces" ^
    --model-dir "%input_dir%\model" ^
    --model %model_name%
    
    
pause