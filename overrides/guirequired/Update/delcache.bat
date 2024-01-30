@echo off
rmdir /s /q Update
del /s /q Update.zip
if errorlevel 1 (
  echo 删除失败！
  echo 请尝试手动删除
  explorer .\
  pause
  exit /b 1
)
exit