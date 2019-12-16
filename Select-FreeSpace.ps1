# Create a new object and output the amount of space in it,
# including a descriptive label
Get-PSDrive -Name / | Select-Object -Property Name,Free |
	ForEach-Object -Process {
		$_.Free = ($_.Free)/1024.0/1024.0; $_
	}
