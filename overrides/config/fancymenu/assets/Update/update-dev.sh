#!/bin/bash
echo "MineOptimiz Updater有更新的版本"
echo "现在将会更新"
wget "https://gh.ddlc.top/https://github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.0(Fabric-1.20.1)/Update.sh" -O ./Update.sh || exit 1
wget "https://gh.ddlc.top/https://github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.0(Fabric-1.20.1)/Update.ps1" -O ./config/fancymenu/assets/Update/Update.ps1 || exit 1
echo "更新完成"
echo "正在重新启动Updater..."
bash ./Update.sh

