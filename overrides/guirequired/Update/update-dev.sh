#!/bin/bash
cd ./guirequired/Update/
echo "正在下载更新包中..."
wget https://nightly.link/SmallMushroom-offical/MineOptimiz/workflows/main/1.20-Forge-Dev -O Update.zip || bash error.sh
echo "正在解压更新包..."
unzip Update.zip
rm Update.zip
mv *.zip Update.zip || bash error.sh
unzip Update.zip -d ./Update || bash error.sh
cd ..
cd ..
echo "正在删除旧的文件..."
rm -rf config CustomSkinLoader mods resourcepacks
echo "正在复制新的文件..."
cp -r "./guirequired/Update/Update/overrides/config" ./ || bash error.sh
cp -r "./guirequired/Update/Update/overrides/CustomSkinLoader" ./ || bash error.sh
cp -r "./guirequired/Update/Update/overrides/mods" ./ || bash error.sh
cp -r "./guirequired/Update/Update/overrides/resourcepacks" ./ || bash error.sh
echo "正在删除缓存..."
cd ./guirequired/Update/
rm Update.zip || echo "删除失败！下次更新可能会出问题！"
rm -rf Update || echo "删除失败！下次更新可能会出问题！"
xdg-open linuxupdatefinish.txt