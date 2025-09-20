# Сопоставление процессов и их сетевой активности

$network_activity = (Get-NetTCPConnection | ForEach-Object {
    $processName = (Get-Process -Id $_.OwningProcess).ProcessName
    [pscustomobject]@{
        ProcessName = $processName
        ProcessID = $_.OwningProcess
        LocalAddress = $_.LocalAddress
        LocalPort = $_.LocalPort
        RemoteAddress = $_.RemoteAddress
        RemotePort = $_.RemotePort
        State = $_.State
    }
})

$network_activity.Length
$network_activity[123]
