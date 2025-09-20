<# Chapter 4 practice ========================================================
Использование документации
============================================================================#>

# 1. Вывести список запущенных процессов ---------------------------------
Write-Host "Cписок запущенных процессов"
Get-Process | Select-Object -Property Name, Id, CPU, Path | Sort-Object -Property cPU -Descending | Select-Object -First 10

# 2. Проверить подключение к ресурсу в Интернет без ping -----------------
Write-Host "Проверить подключение к ресурсу в Интернет без ping"
Test-Connection -ComputerName google.com -BufferSize 50 -Count 5

# 3. Отобразить список всех командлетов (только их) ----------------------
Write-Host "Отобразить список всех командлетов"
Get-Command -CommandType Cmdlet

# 4. Отобразить список всех псевдонимов  ---------------------------------
Write-Host "Отобразить список всех псевдонимов"
Get-Alias 

# 5. Создать псевдоним ntst для выпонения команды netstat в Powershell ---
Write-Host "Создание псевдонима ntst для netstat"
Set-Alias -Name ntst -Value netstat
Set-Alias -Name nstat -Value Get-NetTCPConnection

# 6. Отобразить список процессов, начинающихся с буквы p -----------------
Write-Host "Отобразить список процессов, начинающихся с буквы p"
Get-Process -Name p*

# 7. Создать папки Myfolder1 и Mefolder2 ---------------------------------
Write-Host "Создать папки Myfolder1 и Mefolder2"
New-Item -ItemType Directory Myfolder1, Myfolder2

# 8. Удалите созданные папки MyFolder ------------------------------------
Write-Host "Удалите созданные папки MyFolder" 
Remove-Item MyFolder*
