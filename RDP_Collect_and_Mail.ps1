C:\Powershell\RDPConnectionParser.ps1 -ServersToQuery asm-wh-rds1, asm-wh-hv1, asm-wh-hv2, asm-wh-sql3, asm-wh-nav1, asm-bc1

#####Define Variables#####
$fromaddress = “bs_noreply@asmtech.com”
$toaddress = “business.systems@asmtech.com”
$Subject = “RDS Connection Log”
#$body = get-content “C:\users\desktop\content.html”
$Date = Get-Date -UFormat "%Y-%m-%d"
#$Date = (Get-Date -Format s) -replace ":", "."
$attachment = “C:\Disks\RDPLogs\$Date`_RDP_Report.csv”
$smtpserver = “asmtech-com.mail.protection.outlook.com”

##################################

$message = new-object System.Net.Mail.MailMessage
$message.From = $fromaddress
$message.To.Add($toaddress)
$message.IsBodyHtml = $True
$message.Subject = $Subject
$attach = new-object Net.Mail.Attachment($attachment)
$message.Attachments.Add($attach)
#$message.body = $body
$smtp = new-object Net.Mail.SmtpClient($smtpserver)
$smtp.Send($message)