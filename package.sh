#!/bin/bash
## Package Script of MineOptimiz
mcdir=$mcdir
configdir=$mcdir/config
echo "Downloading Updater..."
curl "https://mirror.ghproxy.com/github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.2(Fabric-1.20.1)/Update.sh" -O $mcdir/Update.sh
curl "https://mirror.ghproxy.com/github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.2(Fabric-1.20.1)/Update.bat" -O $mcdir/Update.bat
mkdir -p $configdir/fancymenu/assets/Update/
curl "https://mirror.ghproxy.com/github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.2(Fabric-1.20.1)/Update.ps1" -O $configdir/fancymenu/assets/Update/Update.ps1
curl "https://123smallmushroom.github.io/update-dev.sh" -O $configdir/fancymenu/assets/Update/update-dev.sh
curl "https://123smallmushroom.github.io/update-stable.sh" -O $configdir/fancymenu/assets/Update/update-stable.sh
echo "Removing useless files..."
rm -rf .github
rm -rf .git
rm meta.json
rm licenceofmods.txt
rm -rf versions
rm README.md
cd overrides
mv h.txt options.txt
cd ..
echo "Compressing..."
zip -r "./MineOptimiz.zip" ./*
mv MineOptimiz.zip "MineOptimiz v3.201.0-fabric+custompackage.mrpack"