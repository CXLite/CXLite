#!/bin/bash
# 获取CXLiteServer
# 初始化并更新子项目
git submodule update --init --recursive
echo "子项目就绪"
# 从当前目录的 ui_version 文件中读取版本号
VERSION=$(cat ui_version)
# 下载 static.zip 文件
wget "https://github.com/CXLite/CXLite_UI/releases/download/$VERSION/static.zip" -O static.zip
# 创建目标目录
mkdir -p ./application/static
# 解压 static.zip 到目标目录
unzip static.zip -d ./application/static
# 删除下载的 zip 文件
rm static.zip
echo "UI资源已下载并解压到 ./application/static 文件夹"
