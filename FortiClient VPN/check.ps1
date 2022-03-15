$ProgramName = "FortiClientVPN"
$ProgramPath = "C:\Program Files\Fortinet\FortiClient\FortiClient.exe"
$ProgramVersion_target = '7.0.2.90'
$ProgramVersion_current = [System.Diagnostics.FileVersionInfo]::GetVersionInfo($ProgramPath).FileVersion
$RegPath = 'HKLM:\SOFTWARE\Fortinet\FortiClient\Sslvpn\Tunnels\XYZ' # Hier den Namen anpassen!!
$RegContent = Get-ItemProperty -Path $RegPath

if(($ProgramVersion_current -eq $ProgramVersion_target) -and ($RegContent)){
    Write-Host "Found it!"
}