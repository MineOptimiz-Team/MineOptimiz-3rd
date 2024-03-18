#!/bin/bash
echo "正在下载更新包中..."
wget https://nightly.link/SmallMushroom-offical/MineOptimiz-Next/workflows/main/1.20.1-Dev -O Update.zip || exit 1
echo "正在解压更新包..."
unzip Update.zip
rm Update.zip
mv *.zip Update.zip || exit 1
unzip Update.zip -d ./Update || exit 1
echo "正在删除旧的文件..."
rm -rf config CustomSkinLoader mods resourcepacks
echo "正在复制新的文件..."
cp -r "./Update/overrides/config" ./ || exit 1
cp -r "./Update/overrides/CustomSkinLoader" ./ || exit 1
cp -r "./Update/overrides/mods" ./ || exit 1
cp -r "./Update/overrides/resourcepacks" ./ || exit 1
echo "正在下载非内置模组"
wget https://mirror.ghproxy.com/https://github.com/ImGRUI/Exordium/releases/download/1.0.3-1.20/exordium-fabric-1.0.3-mc1.20.jar -O ./mods/exordium-fabric-1.0.3-mc1.20.jar || exit 1
wget https://mirror.ghproxy.com/https://github.com/tr7zw/3d-Skin-Layers/releases/download/1.6.2/skinlayers3d-fabric-1.6.2-mc1.20.1.jar -O ./mods/skinlayers3d-fabric-1.6.2-mc1.20.1.jar || exit 1
wget https://cdn.modrinth.com/data/Wq5SjeWM/versions/r2jmO7md/fancymenu_fabric_3.1.2_MC_1.20.1.jar -O ./mods/fancymenu_fabric_3.1.2_MC_1.20.1.jar || exit 1
wget https://mirror.ghproxy.com/https://github.com/tr7zw/EntityCulling/releases/download/1.6.2-1.20/entityculling-fabric-1.6.2-mc1.20.jar -O ./mods/entityculling-fabric-1.6.2-mc1.20.jar || exit 1
wget https://cdn.modrinth.com/data/MPCX6s5C/versions/YbSMjtFY/notenoughanimations-fabric-1.7.1-mc1.20.1.jar -O ./mods/notenoughanimations-fabric-1.7.1-mc1.20.1.jar || exit 1
echo "下载完成"
echo "正在删除缓存..."
rm Update.zip || echo "删除失败！下次更新可能会出问题！"
rm -rf Update || echo "删除失败！下次更新可能会出问题！"
echo "更新完成"
exit
