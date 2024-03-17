@echo off
mklink /j guirequired .\config\fancymenu\assets
echo 欢迎使用MineOptimiz Updater
echo 1.下载并更新稳定版
echo 2.下载并更新测试版
echo 3.退出
set /p update=
if "%update%"=="3" exit
echo 请确保Minecraft处于关闭状态
echo 正在下载更新包
if "%update%"=="1"  .\guirequired\Update\aria2\aria2c.exe -o Update.zip https://nightly.link/SmallMushroom-offical/MineOptimiz-Next/workflows/main/1.20.1
if "%update%"=="2" .\guirequired\Update\aria2\aria2c.exe -o Update.zip https://nightly.link/SmallMushroom-offical/MineOptimiz-Next/workflows/main/1.20.1-Dev
if errorlevel 1 (
  echo 下载失败！
  pause
  exit /b 1
)
echo 下载完成
echo 正在解压更新包
.\guirequired\Update\7z\7z.exe x Update.zip
del Update.zip
ren *.zip Update.zip
.\guirequired\Update\7z\7z.exe x Update.zip -o".\Update"
if errorlevel 1 (
  echo 解压失败！
  pause
  exit /b 1
)
echo 解压完成
echo 正在删除旧的文件
rd /s /q config
rd /s /q CustomSkinLoader
rd /s /q mods
rd /s /q resourcepacks
if errorlevel 1 (
  echo 删除失败！
  pause
  exit /b 1
)
echo 删除完成
echo 正在复制新的文件
xcopy .\Update\overrides\config .\config /E /H /I
xcopy .\Update\overrides\CustomSkinLoader .\CustomSkinLoader /E /H /I
xcopy .\Update\overrides\mods .\mods /E /H /I
xcopy .\Update\overrides\resourcepacks .\resourcepacks /E /H /I
if errorlevel 1 (
  echo 复制失败！
  pause
  exit /b 1
)
echo 复制完成！
echo 正在删除缓存
rd /s /q guirequired
rd /s /q Update
del Update.zip
if errorlevel 1 (
  echo 删除失败！
  echo 下次更新可能会出问题
)
echo 更新完成！
echo 请重启Minecraft以查看更改
pause
