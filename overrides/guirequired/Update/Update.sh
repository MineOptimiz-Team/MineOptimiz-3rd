#!/bin/bash

# Set up environment
cd /path/to/guirequired/Update || exit 1

# User prompts for update version
echo "1. 最新稳定版"
echo "2. 最新Dev版"
echo "3. 手动选择zip更新包（如果是Github Actions打包的更新包则需先解压一次）"
read -p "请选择更新版本: " updateversion

# Download updates
if [ "$updateversion" == "1" ]; then
  echo "下载Stable更新包中..."
  wget https://nightly.link/SmallMushroom-offical/MineOptimiz/workflows/main/1.19.4-OptiFabric-Stable -O Update.zip
elif [ "$updateversion" == "2" ]; then
  echo "下载Dev更新包中..."
  wget https://nightly.link/SmallMushroom-offical/MineOptimiz/workflows/main/1.19.4-OptiFabric-Dev -O Update.zip
elif [ "$updateversion" == "3" ]; then
  echo "请将更新包拖至此"
  read -p "更新包路径: " updatepack
  cp "$updatepack" ./
  mv *.zip Update.zip
fi

# Extract and update files
if [ "$updateversion" != "3" ]; then
  unzip Update.zip
  rm Update.zip
  mv *.zip Update.zip
fi

unzip Update.zip -d ./Update || exit 1

# Clean up old files
cd ..
cd ..
rm -rf config CustomSkinLoader mods resourcepacks

# Copy updated files
echo "正在复制更新文件..."
updatepath="$PWD/Update/overrides"
echo "$updatepath"
cp -r "$updatepath/config" ./config || exit 1
cp -r "$updatepath/CustomSkinLoader" ./CustomSkinLoader || exit 1
cp -r "$updatepath/mods" ./mods || exit 1
cp -r "$updatepath/resourcepacks" ./resourcepacks || exit 1

# Clean up and finish
echo "完成！"
echo "请重新启动游戏以查看更改"
