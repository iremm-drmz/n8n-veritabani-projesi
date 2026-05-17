@echo off
cd /d "%~dp0"
echo GitHub ile esitleniyor...
git config pull.rebase false
git pull origin main
echo.
echo Dosyalar yukleniyor...
git add .
git commit -m "Final raporu eklendi"
git push -u origin main
echo.
echo Bitti! Kapatabilirsiniz.
pause
