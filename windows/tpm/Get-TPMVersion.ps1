# Get TPM information using CIM (WMI) instance
$tpm = Get-CimInstance -Namespace 'root/cimv2/Security/MicrosoftTpm' -ClassName 'Win32_Tpm'

# Check if TPM is present and if SpecVersion is available
if ($tpm -ne $null -and $tpm.SpecVersion -ne $null) {
    # Split the SpecVersion values by comma, sort, and select the latest (highest) version
    $tpmVersion = ($tpm.SpecVersion -split ', ') | Sort-Object | Select-Object -Last 1

    # Output the version or 'N/A' if not available
    if ($tpmVersion -ne '') {
        Write-Host "TPM version: $tpmVersion"
    } else {
        Write-Host "TPM version information is unavailable."
    }
} else {
    Write-Host "TPM is not available on this device."
}
