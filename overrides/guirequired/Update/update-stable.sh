#!/bin/bash
cd ./guirequired/Update/
xdg-open downloading.txt
wget https://nightly.link/SmallMushroom-offical/MineOptimiz/workflows/main/1.19.4-OptiFabric-Stable -O Update.zip || bash error.sh
xdg-open unzip.txt
unzip Update.zip
rm Update.zip
mv *.zip Update.zip || bash error.sh
unzip Update.zip -d ./Update || bash error.sh
cd ..
cd ..
xdg-open ./guirequired/Update/del-old-files.txt
rm -rf config CustomSkinLoader mods resourcepacks
xdg-open ./guirequired/Update/copying-new-files.txt
cp -r "./guirequired/Update/Update/overrides/config" ./ || bash error.sh
cp -r "./guirequired/Update/Update/overrides/CustomSkinLoader" ./ || bash error.sh
cp -r "./guirequired/Update/Update/overrides/mods" ./ || bash error.sh
cp -r "./guirequired/Update/Update/overrides/resourcepacks" ./ || bash error.sh
cd ./guirequired/Update/
rm Update.zip
rmdir Update
xdg-open linuxupdatefinish.txt