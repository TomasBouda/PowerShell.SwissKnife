function ConvertTo-SHA256 {
	Param (
		[Parameter(Mandatory = $true)]
		[string]$String
	)

	process {
		$hasher = [System.Security.Cryptography.HashAlgorithm]::Create('sha256')
		$hash = $hasher.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($String))

		$hashString = [System.BitConverter]::ToString($hash)
		$hashString -replace '-', ''
	}
}