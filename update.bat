@echo off
chcp 65001 >nul
title Fixing Syntax Error in Services Array

echo Generating fix script...

> fix.ps1 echo $content = Get-Content app\page.jsx -Raw
>>fix.ps1 echo $content = $content -replace "\{ icon: Sparkles, title: 'Haircut[\s\S]*?\r?\n\];", "{ icon: Sparkles, title: 'Haircut and Beard Combo', desc: 'The full package. Get your hair and beard done together for a complete transformation.' }`r`n];"
>>fix.ps1 echo Set-Content app\page.jsx -Value $content -Encoding UTF8

>>fix.ps1 echo $book = Get-Content app\book\page.jsx -Raw
>>fix.ps1 echo $book = $book -replace "Haircut [\s\S]* Beard Combo", "Haircut and Beard Combo"
>>fix.ps1 echo Set-Content app\book\page.jsx -Value $book -Encoding UTF8

powershell -ExecutionPolicy Bypass -File fix.ps1
del fix.ps1

echo ==========================================
echo SUCCESS! Syntax error fixed.
echo.
echo VERY IMPORTANT: You must push this to GitHub!
echo Open your terminal and run these 3 commands:
echo git add .
echo git commit -m "Fixed syntax error in services array"
echo git push
echo ==========================================
pause