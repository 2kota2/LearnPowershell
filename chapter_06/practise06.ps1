<# Chapter 6 practice ========================================================
Конвейеры соединение команд 
============================================================================#>

Get-Location
Set-Location $PSScriptRoot
Get-Location

# 1. Сравнение снимков системы  ----------------------------------------------
Get-Process | Export-Csv process.csv
code
Get-Process | Export-Csv process2.csv
Compare-Object -ReferenceObject $(Get-Content .\process2.csv) -DifferenceObject $(Get-Content .\process2.csv) | Out-File compare.csv

# 2. Неправильный конвейерн --------------------------------------------------
Get-Command | Export-Csv gc.csv | Out-File gc2.txt

# 3. Работа с заданием -------------------------------------------------------
Start-Job -ScriptBlock { ping 8.8.8.8 -t }
Get-Job 1 | Select-Object -Property Id, Name, Command, State
Get-Job -Id 1 | Stop-Job
Remove-Job 1

# 4. Файл с другим разделителем ---------------------------------------------
Start-Job -ScriptBlock { ping 8.8.8.8 -t }
Get-Job 3 | Export-Csv -Delimiter "|" -Path .\jobs.csv
Get-Job -Id 3 | Stop-Job
Remove-Job 3

# 5, 6. Добавить комментарий и инфу в файл ----------------------------------
 "# Comment -----------------------------" > process_4.csv
Get-Process -Id 4 | Export-Csv -Append -Path .\process_4.csv
Get-Content .\process_4.csv

# 7. Использовать региональный разделитель ----------------------------------
Get-Process -id 0 | Export-Csv -UseCulture idle.csv
Get-Content idle.csv
