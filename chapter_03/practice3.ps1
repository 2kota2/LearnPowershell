<# Chapter 3 practice ========================================================
Использование документации
============================================================================#>


# 2. Командлет для конвертации в формат HTML ---------------------------------
Write-Host "Командлет для конвертации в формат HTML"
Get-Help *HTMl


# 3. Командлет для перенаправления в файл ------------------------------------
Write-Host "Командлет для перенаправления в файл"
Get-Help *-File*
Get-Help Out-File

# 4. Сколько командлетов для работы с процессами -----------------------------
Write-Host "Сколько командлетов для работы с процессами"
Get-Command -Noun Process | Measure-Object

# 5. Командлет для установки точки останова ----------------------------------
Write-Host "Командлет для установки точки останова"
Get-Command Set-PSB*

# 6. Какие командлеты для работы с алиас -------------------------------------
Write-Host "Какие командлеты для работы с алиас"
Get-Command -Noun Alias

# 7. Как сохранить PowerShell сессию  ----------------------------------------
Write-Host "Командлеты для работы с PowerShell-сессией "
Get-Command -Noun Transc*
Write-Host "Начало PowerShell сесии:"
Start-Transcript
Write-Host "Завершение PowerShell сесии: "
Stop-Transcript

# 8. Как обратиться к процессу по имени --------------------------------------
Get-Help Get-Process -Examples
Write-Host "Информация о процессе по имени"
Get-Process -Name wininit

# 9. Использование Get-Process -----------------------------------------------
Write-Host "Процессы с учетом пользователя"
Get-Process -IncludeUserName

# 10. ВЫполнение команды на удаленном хосте ----------------------------------
Get-Command -Verb Invoke
Write-Host "Справка по выполнению командлетов на удаленном компьютере"
Get-Help Invoke-Command

# 11. Задание ширины по выводе в файл ----------------------------------------
Write-Host "Задание ширины по выводе в файл"
Get-Help Out-File -Examples 
$myString = "Это очень длинная строка, которая будет обрезана при записи в файл."
$myString | Out-File -FilePath ".\hello.txt" -Width 10
Get-Content ".\hello.txt"

# 12. Дозапись в файл -------------------------------------------------------
Write-Host "Дозапись в файл"
$myString = "Это другая длинная строка, которая будет обрезана при записи в файл."
$myString | Out-File -FilePath ".\hello.txt" -Width 10 -Append
Get-Content ".\hello.txt"

# 13. Список всех alias -----------------------------------------------------
Write-Host "Список всех alias"
Get-Command *-Alias
Get-Help Get-Alias
Get-Alias

# 14. Print the shortest string ---------------------------------------------
Write-Host "Print the shortest string"
$strings = Get-Command -Noun Process
$strName = $strings.Name
$strLen = ($strName | Measure-Object -Minimum -Property Length).Minimum
$strName | Out-String -Width $strLen 

# 15. Сколько командлетов работают с объектами ------------------------------
Write-Host "Сколько командлетов работают с объектами"
Get-Command -Noun Object | Measure-Object

# 16. Информации о массивах -------------------------------------------------
Write-Host "Информации о массивах"
Get-Help Get-Help about_Arrays
