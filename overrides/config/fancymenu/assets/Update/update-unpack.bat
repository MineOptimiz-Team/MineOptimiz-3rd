@echo off
.\guirequired\Update\7z\7z.exe x Update.zip
del Update.zip
ren *.zip Update.zip
.\guirequired\Update\7z\7z.exe x Update.zip -o".\Update"
