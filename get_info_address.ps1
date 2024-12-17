$data = Import-Excel -Path "C:\Users\vlad0\Downloads\lab\addresses.xlsx"  -StartRow 1 -EndRow 6

$data | ForEach-Object {
	
	$ip = $_."IP-Addresses"
	
	try {
		$hostEntry = [System.Net.Dns]::GetHostEntry($ip).HostName
		$_ | Add-Member -MemberType NoteProperty -Name "HostName" -Value $hostEntry
	} catch {
		$_ | Add-Member -MemberType NoteProperty -Name "HostName" -Value  "No value"
	}
	
}


$data | Export-Excel -Path "C:\Users\vlad0\Downloads\lab\wyniki.xlsx" -AutoSize