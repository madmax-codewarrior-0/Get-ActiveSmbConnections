while ($true)
{
	Get-SmbSession | 
	Select-Object ClientComputerName,ClientUserName,NumOpens,SecondsExists,SecondsIdle | 
	Sort-Object -Property SecondsIdle | 
	Format-Table

	Start-Sleep -Seconds 10
	
	Clear-Host
}