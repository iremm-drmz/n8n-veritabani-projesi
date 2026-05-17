@echo off
cd /d "%~dp0"
echo Guncellemeler aliniyor (GitHub'daki degisiklikler esitleniyor)...
git config pull.rebase false
git pull origin main
echo.
echo Dosyalar GitHub'a yukleniyor...
git add .
git commit -m "Rapor ve son dosyalar eklendi"
git push -u origin main
echo.
echo Islem tamam! Herhangi bir tusa basarak kapatabilirsiniz.
pause
