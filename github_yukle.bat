@echo off
echo Proje GitHub'a yukleniyor... Lutfen bekleyin.
git init
git add .
git commit -m "Ilk yukleme: n8n ve veritabani dosyalari"
git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/iremm-drmz/n8n-veritabani-projesi.git
git push -u origin main
echo.
echo Islem tamamlandi! Projeniz basariyla GitHub'a yuklendi.
echo Herhangi bir tusa basarak pencereyi kapatabilirsiniz.
pause
