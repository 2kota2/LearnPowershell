<# Chapter 5 practice ========================================================
Работа с поставщиками
============================================================================#>

# 1. создать каталог с именем Labs -------------------------------------------
Get-Location
$myPath = "C:\_Scripts\PowerShell\LearnPowershell\chapter_05\"
Set-Location -Path $myPath
New-Item -ItemType Directory -Name Labs

# 2. Создать в этой папке файл нулевого размера с именем Test.txt ------------
Set-Location Labs
New-Item -ItemType File -Name Test.txt

# 3. Попытайться записать в файл слово -TESTING ------------------------------
Set-Item -Path "${myPath}Labs\Test.txt" -Value "-TESTING" 
Set-Content -Path "${myPath}Labs\Test.txt" -Value "-TESTING"

# 4. отобразить значение системной переменной PATH ---------------------------
Set-Location -Path "Env:\"
Get-ChildItem -Path $PATH
