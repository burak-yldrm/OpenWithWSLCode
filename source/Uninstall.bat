@echo off
title Remove WSLCode

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

rd /s /q "C:\Users\%USERNAME%\AppData\Local\Programs\Open with WSLCode\"

reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with WSL" /f
reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open with WSL" /f

:: linkedin.com/in/burakyldrm0/
:: github.com/burak-yldrm
:: youtube.com/@burakyldrm_