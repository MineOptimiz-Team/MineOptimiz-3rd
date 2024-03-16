@echo off
mklink /j guirequired .\config\fancymenu\assets
echo 欢迎使用MineOptimiz Updater
echo 1.下载并更新稳定版
echo 2.下载并更新测试版
echo 3.退出
set /p update=
if not "%update%"=="3" (
  echo 请确保Minecraft处于关闭状态
  echo 正在下载更新包
if "%update%"=="1" (
  .\guirequired\Update\update-stable-download.bat
)
if "%update%"=="2" (
  .\guirequired\Update\update-dev-download.bat
)
if "%update%"=="3" exit
echo 下载完成
echo 正在解压更新包
.\guirequired\Update\update-unpack.bat
echo 解压完成
echo 正在删除旧的文件
del /s /q config
del /s /q CustomSkinLoader
del /s /q mods
del /s /q resourcepacks
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
.\guirequired\Update\update-rm-cache.bat
echo 更新完成！
echo 请重启Minecraft以查看更改
pause
