@echo off
title Eiyoo Setup WSLCode

echo [35m*************************************************************************[0m
echo [35m* [34mBu scripti kullandiginiz icin tesekkur ederim                         [35m*[0m
echo [35m* [34mAsagida yer alan sosyal medya hesaplarimdan bana ulasabilirsiniz      [35m*[0m
echo [35m*************************************************************************[0m
echo.

echo [32mSosyal Medya Linkleri (Ctrl+click):                                     [35m*[0m
echo [32mLinkedIn: [34mhttps://linkedin.com/in/burakyldrm0/                          [35m*[0m
echo [32mGitHub: [34mhttps://github.com/burak-yldrm                                  [35m*[0m
echo [32mYouTube: [34mhttps://youtube.com/@burakyldrm_                               [35m*[0m
echo [35m*************************************************************************[0m

choice /C X /N /M "Press X to continue..."



:: KAYIT DEFTERİNİZDE OLUŞACAK HER HANGİ BİR SORUNUN SORUMLULUĞUNU KABUL ETMEYECEĞİM - KOMUTLARI TEK TEK ÇALIŞTIRIP DA İLERLEYEBİLİRSİNİZ.

:: BU KISIM MEVCUT DİZİN ÜZERİNDE Kİ SAĞ TIKLAMALAR İÇİN İŞLEVSELLİK TAŞIR!!!!!

:: mkdir ile "C:\Users\%USERNAME%\AppData\Local\Programs\" dizinine "Open with WSLCode" adında bir klasör oluşturur.
mkdir "C:\Users\%USERNAME%\AppData\Local\Programs\Open with WSLCode\"
:: copy komutu mevcut dizin üzerinde ki dosyayı "C:\Users\%USERNAME%\AppData\Local\Programs\Open with WSLCode\" dizinine taşır.
copy "ico\Burak_Yldrm_Visual_Studio_Code_open_with_Windows_Subsystem_f_db877af4-cd93-48f4-8701-a68189e6c84a.ico" "C:\Users\%USERNAME%\AppData\Local\Programs\Open with WSLCode\"
:: Kayıt defterine mevcut dizinde sağ tıkladığımızda "Open with WSLCode" etiketini görmek için kayıt defterine ekleme yapılır.
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with WSL" /ve /t REG_EXPAND_SZ /d "Open with WSLCode" /f
:: icon için yeni bir value oluşturulur ve taşıdığımız ".ico" uzantılı dosya value olarak geçilir.
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with WSL" /v Icon /t REG_EXPAND_SZ /d "C:\Users\%USERNAME%\AppData\Local\Programs\Open with WSLCode\Burak_Yldrm_Visual_Studio_Code_open_with_Windows_Subsystem_f_db877af4-cd93-48f4-8701-a68189e6c84a.ico" /f
:: eklenen etiketin işlevini "wsl.exe code ." olarak ayarlar
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with WSL\command" /ve /t REG_EXPAND_SZ /d "wsl.exe code ." /f

:: BU KISIM KLASÖR/DOYSA ÜZERİNE SAĞ TIKLAMALAR İÇİN İŞLEVSELLİK SAĞLAR!!!!

reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with WSL" /ve /t REG_EXPAND_SZ /d "Open with WSLCode" /f
:: icon için yeni bir value oluşturulur ve taşıdığımız ".ico" uzantılı dosya value olarak geçilir.
reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with WSL" /v Icon /t REG_EXPAND_SZ /d "C:\Users\%USERNAME%\AppData\Local\Programs\Open with WSLCode\Burak_Yldrm_Visual_Studio_Code_open_with_Windows_Subsystem_f_db877af4-cd93-48f4-8701-a68189e6c84a.ico" /f
:: eklenen etiketin işlevini "wsl.exe code ." olarak ayarlar
:: reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with WSL\command" /ve /t REG_EXPAND_SZ /d "cmd.exe /C for /F \"usebackq delims=\" %%A in (`wsl wslpath \"%V\"`) do (wsl.exe code \"%%A\")" /f


:: linkedin.com/in/burakyldrm0/
:: github.com/burak-yldrm
:: youtube.com/@burakyldrm_