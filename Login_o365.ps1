$Cred = Get-Credential -credential dcowley@asmtech.com
$s = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell -Credential $cred -Authentication Basic –AllowRedirection
Import-PSSession $s