@echo off
rmdir /s /q Update
del /s /q Update.zip
if errorlevel 1 (
  echo É¾³ıÊ§°Ü£¡
  echo Çë³¢ÊÔÊÖ¶¯É¾³ı
  pause
  exit /b 1
)
exit
