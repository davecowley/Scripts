C:\Powershell\RDPConnectionParser.ps1 -ServersToQuery server1, server2  -StartTime "January 1"
Send-MailMessage -From 'Remote Desktop Log <bs_noreply@email.com>' -To 'Business Systems <business.systems@email.com>' -Subject 'RDP Connection Log' -Body "File exported to \\server1\disks$\RDPLogs" -SmtpServer 'server-com.mail.protection.outlook.com'
