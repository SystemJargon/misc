# Get TPM information using CIM (WMI) instance
$tpm = Get-CimInstance -Namespace 'root/cimv2/Security/MicrosoftTpm' -ClassName 'Win32_Tpm'

# Check if TPM is present and if SpecVersion is available
if ($tpm -eq $null) {
    Write-Host "TPM is not available on this device. Device is non-compliant."
    exit 2  # TPM is not available, return code 2 for error
} elseif ($tpm.SpecVersion -eq $null) {
    Write-Host "TPM version information is unavailable. Device is non-compliant."
    exit 2  # TPM version information is unavailable, return code 2
} else {
    # Split the SpecVersion values by comma, sort, and select the latest (highest) version
    $tpmVersion = ($tpm.SpecVersion -split ', ') | Sort-Object | Select-Object -Last 1

    # Check if the TPM version is 2.0 or later
    if ($tpmVersion -ge "2.0") {
        Write-Host "TPM version is 2.0 or later. Device is compliant."
        exit 0  # Exit code 0 for compliant devices (TPM 2.0 or later)
    } else {
        Write-Host "TPM version is lower than 2.0. Device is non-compliant."
        exit 1  # Exit code 1 for non-compliant (TPM version < 2.0)
    }
}
