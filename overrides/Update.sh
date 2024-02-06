#!/bin/bash
echo "1.最新稳定版"
echo "2.最新Dev版"
echo "3.退出"
echo "在更新前，请确保系统中存在wget"
read -p "请输入要更新的版本的编号：" updateversion
echo "请确保在更新时关闭了Minecraft"
if ["$updateversion" = "1"]; then
  bash ./guirequired/Update/update-stable.sh | tee ./guirequired/Update/update.log
elif ["$updateversion" = "2"]; then
  bash ./guirequired/Update/update-dev.sh | tee ./guirequired/Update/update.log
elif ["$updateversion" = "3"]; then
  exit 0