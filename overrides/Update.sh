#!/bin/bash
echo "1.最新稳定版"
echo "2.最新Dev版"
echo "3.退出"
echo "下载服务器在国外，建议使用霍格沃兹环境下载"
echo "在更新前，请确保系统中存在wget"
read -p "请输入要更新的版本的编号：" updateversion
echo "请确保在更新时关闭了Minecraft"
echo "如果在更新时窗口突然退出，则可能是更新失败"
if [ "$updateversion" = "1" ]; then
    bash ./guirequired/Update/update-stable.sh
    cd ./guirequired/Update
elif [ "$updateversion" = "2" ]; then
    bash ./guirequired/Update/update-dev.sh
    cd ./guirequired/Update
elif [ "$updateversion" = "3" ]; then
    exit 0
fi