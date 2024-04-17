@echo off
echo MineOptimiz Updater有更新的版本
echo 现在将会更新
pause
powershell Invoke-WebRequst -Uri "https://gh.ddlc.top/https://github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.2(Forge-1.20.1)/Update.ps1" -OutFile "./config/fancymenu/assets/Update/Update.ps1"
powershell Invoke-WebRequst -Uri "https://gh.ddlc.top/https://github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.2(Forge-1.20.1)/Update.bat" -OutFile "./Update.bat"
echo 更新完成
echo 正在重新启动Updater...
start .\Update.bat