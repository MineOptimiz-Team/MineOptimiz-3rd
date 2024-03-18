#!/bin/bash
echo "1.最新稳定版"
echo "2.最新Dev版"
echo "3.退出"
echo "下载服务器在国外，建议使用霍格沃兹环境下载"
echo "在更新前，请确保系统中存在wget"
echo "更新后会删除并覆盖模组配置，如果您修改过，请注意备份"
read -p "请输入要更新的版本的编号：" updateversion
echo "请确保在更新时关闭了Minecraft"
echo "如果在更新时窗口突然退出，则可能是更新失败"
if [ "$updateversion" = "1" ]; then
    bash ./config/fancymenu/assets/Update/update-stable.sh
    cd ./config/fancymenu/assets
elif [ "$updateversion" = "2" ]; then
    bash ./config/fancymenu/assets/Update/update-dev.sh
    cd ./config/fancymenu/assets
elif [ "$updateversion" = "3" ]; then
    exit 0
fi
