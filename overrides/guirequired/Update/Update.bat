@echo off
cd /d %cd%\guirequired\Update
echo 1.最新稳定版
echo 2.最新Dev版
echo 3.手动选择zip更新包（如果是Github Actions打包的更新包则需先解压一次）
set /p updateversion=
if "%updateversion%"=="1" (
  echo 下载Stable更新包中...
  certutil -urlcache -split -f https://nightly.link/SmallMushroom-offical/MineOptimiz-Next/workflows/main/1.20.1-Forge-Stable ".\Update.zip"
)
if "%updateversion%"=="2" (
  echo 下载Dev更新包中...
  certutil -urlcache -split -f "https://nightly.link/SmallMushroom-offical/MineOptimiz-Next/workflows/main/1.20.1-Forge-Dev" ".\Update.zip"
)
if errorlevel 1 (
  echo 下载失败！
  pause
  exit /b 1
)
if "%updateversion%"=="3" (
  echo 请将更新包拖至此
  set /p updatepack=
  copy %updatepack% .\
  ren *.zip Update.zip
)
if not "%updateversion%"=="3" echo 下载完成
echo 正在解压更新包中...
if not "%updateversion%"=="3" (
  .\7z\7z.exe x Update.zip
  del Update.zip
  ren *.zip Update.zip
)
.\7z\7z.exe x Update.zip -o".\Update"
if errorlevel 1 (
  echo 解压失败！
  pause
  exit /b 1
)
echo 解压完成
set updatepath="%cd%\Update\overrides"
echo 正在删除旧文件..
cd ..
cd ..
del /s /q config
del /s /q CustomSkinLoader
del /s /q mods
del /s /q resourcepacks
echo 删除完成
echo 正在复制更新文件...
echo %updatepath%
xcopy %updatepath%\config .\config /E /H /I
xcopy %updatepath%\CustomSkinLoader .\CustomSkinLoader /E /H /I
xcopy %updatepath%\mods .\mods /E /H /I
xcopy %updatepath%\resourcepacks .\resourcepacks /E /H /I
if errorlevel 1 (
  echo 复制失败！
  pause
  exit /b 1
)
echo 复制完成！
echo 正在删除缓存...
cd /d %updatepath%
cd ..
cd ..
start delcache.bat
echo 完成！
echo 请重新启动游戏以查看更改
pause
