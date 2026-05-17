@echo off
chcp 65001 >nul
echo Rapor dosyasi kopyalaniyor...
copy "C:\Users\iremm\Desktop\Irem_Beyza_Durmaz_IEEE_Mizanpaj_Eksiksiz_Final.docx" "C:\Users\iremm\Desktop\veritabanı ödev\"
echo.
echo GitHub'a yukleniyor...
git add "Irem_Beyza_Durmaz_IEEE_Mizanpaj_Eksiksiz_Final.docx"
git commit -m "Turkce IEEE final raporu eklendi"
git push origin main
echo.
echo Islem tamam! Raporunuz formati hic bozulmadan GitHub'a yuklendi.
pause
