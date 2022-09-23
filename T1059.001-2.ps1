#Atomic Test no. 19
#requires Sharphound
write-host "Import and Execution of SharpHound.ps1 from C:\Users\studentadmin\Documents\test" -ForegroundColor Cyan
import-module C:\Users\studentadmin\Documents\test\SharpHound.ps1
Invoke-BloodHound -OutputDirectory $env:Temp
Start-Sleep 5