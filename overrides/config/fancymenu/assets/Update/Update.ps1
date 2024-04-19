echo "1.最新稳定版"
echo "2.最新测试版"
echo "3.选择自定义更新包"
echo "4.退出"
$updatepack = Read-Host
if ($updatepack -eq "4") {
    Pause
    exit
}
if ($updatepack -eq "exit") {
    Pause
    exit
}
if ($updatepack -ne "3") {
    echo "正在下载更新"
}
if ($updatepack -eq "1") {
    Invoke-WebRequest -Uri "https://nightly.link/MineOptimiz-Team/MineOptimiz-3rd/workflows/main/1.20.1" -OutFile "./Update.zip" # 此处 https://nightly.link/MineOptimiz-Team/MineOptimiz-3rd/workflows/main/1.20.1 填写一个可下载稳定版整合包的直链
}
if ($updatepack -eq "2") {
    Invoke-WebRequest -Uri "https://nightly.link/MineOptimiz-Team/MineOptimiz-3rd/workflows/main/1.20.1-Dev" -OutFile "./Update.zip" # 此处 https://nightly.link/MineOptimiz-Team/MineOptimiz-3rd/workflows/main/1.20.1-Dev 填写一个可下载测试版整合包的直链
}
if ($? -eq $false) {
    echo "下载失败！"
    Pause
    exit 1
}
if ($updatepack -eq "3") {
    $customupdatepack = Read-Host -Prompt "请输入更新包路径（如果这是从Github Actions下载下来的更新包，请先解压一次）"
    Copy-Item -Path $customupdatepack -Destination ./
    echo "这是什么格式打包的更新包？"
    echo "1.使用zip压缩包打包的MCBBS整合包"
    echo "2.mrpack后缀的Modrinth整合包"
    $packformat = Read-Host
    if ($packformat -eq "2") {
        Rename-Item ./*.mrpack Update.zip
    }
    if ($packformat -eq "1") {
        Rename-Item ./*.zip Update.zip
    }
}
if ($updatepack -ne "3") {
    echo "下载完成"
}
echo "正在解压"
if ($updatepack -ne "3") {
    Expand-Archive -Path "Update.zip" -DestinationPath ./
    if ($? -eq $false) {
        echo 解压失败！
        Pause
        exit 1
    }
    Remove-Item Update.zip
    Rename-Item ./*.mrpack Update.zip
}
Expand-Archive -Path "Update.zip" -Force -DestinationPath ./Update
if ($? -eq $false) {
    echo 解压失败！
    Pause
    exit 1
}
echo "解压完成"
echo "正在删除过时的文件"
Remove-Item -Path config -Recurse -Force
if ($? -eq $false) {
    echo 删除配置文件夹失败！
}
Remove-Item -Path CustomSkinLoader -Recurse -Force
if ($? -eq $false) {
    echo 删除皮肤补丁配置文件夹失败！
}
Get-ChildItem -Path .\mods -File | 
    Where-Object { $_.Name -notlike "exordium*" -and 
                   $_.Name -notlike "entityculling*" -and 
                   $_.Name -notlike "fancymenu*" -and 
                   $_.Name -notlike "notenoughanimations*" -and 
                   $_.Name -notlike "viafabricplus*" -and 
                   $_.Name -notlike "voicechat*" -and 
                   $_.Name -notlike "skinlayers3d*" -and 
                   $_.Name -notlike "OptiFine*" } | 
    Remove-Item -Force -Recurse
if ($? -eq $false) {
    echo 删除模组文件夹失败！
}
$delresourcepacks = Read-Host -Prompt "是否删除资源包文件夹？如果您有下载了自己的纹理包，请选N，如果没有请选Y"
if ($delresourcepacks -eq "Y") {
    Remove-Item -Path resourcepacks -Recurse -Force
}
if ($? -eq $false) {
    echo 删除资源包文件夹失败！
}
echo “删除完成”
echo "正在复制更新文件"
Copy-Item -Path "./Update/overrides/config" -Force -Destination "./" -Recurse
if ($? -eq $false) {
    echo 复制配置文件夹失败！
}
Copy-Item -Path "./Update/overrides/CustomSkinLoader" -Force -Destination "./" -Recurse
if ($? -eq $false) {
    echo 复制皮肤补丁配置文件夹失败！
}
Copy-Item -Path "./Update/overrides/mods" -Force -Destination "./" -Recurse
if ($? -eq $false) {
    echo 复制模组文件夹失败！
}
Copy-Item -Path "./Update/overrides/resourcepacks" -Force -Destination "./" -Recurse
if ($? -eq $false) {
    echo 复制资源包文件夹失败！
}
echo "复制完成"
echo "正在删除缓存"
Remove-Item -Path Update -Recurse -Force
Remove-Item -Path Update.zip
echo "删除完成"
echo "更新已顺利完成！"
echo "请重新启动Minecraft已查看更改"
pause