@echo off
REM 获取CXLiteServer
REM 初始化并更新子项目
git submodule update --init --recursive
echo 子项目就绪

REM 从当前目录的 ui_version 文件中读取版本号
set /p VERSION=<ui_version

REM 下载 static.zip 文件
powershell -Command "Invoke-WebRequest -Uri https://github.com/CXLite/CXLite_UI/releases/download/%VERSION%/static.zip -OutFile static.zip"

REM 创建目标目录
if not exist .\application\static mkdir .\application\static

REM 解压 static.zip 到目标目录
powershell -Command "Expand-Archive -Path static.zip -DestinationPath .\application\static"

REM 删除下载的 zip 文件
del static.zip

echo UI资源已下载并解压到 .\application\static 文件夹