# RDP Automation Script

A PowerShell script to automate enabling Remote Desktop, creating a local administrator user, and configuring firewall rules for RDP access. This script simplifies the process, especially in environments like Evil-WinRM sessions where executing certain commands can be challenging. Once we have enable RDP , open the required port and added the "pwn" user, we can enjoy the full Windows GUI and run commands freely.


## Features

- **Creates a Local Admin User**: Automatically creates a user named `pwned` with a predefined password.
- **Adds to Administrators Group**: Ensures the user is added to the Administrators group.
- **Enables Remote Desktop**: Modifies the registry to enable RDP access on the target machine.
- **Configures RDP Firewall Rules**: Creates a firewall rule to allow RDP traffic on port 3389.
- **Error Handling**: Skips actions if they’ve already been completed (e.g., user exists, firewall rule exists).

## Prerequisites

- **PowerShell**: The script is designed to run in a PowerShell environment.
- **Administrative Privileges**: Ensure the session has the required privileges to execute the commands.
- **Predefined Password**: The script uses the password `YourSecurePassword123` for the `pwned` user.

## Usage

### 1. Download the Script
Clone the repository or download the script directly:
```bash
git clone https://github.com/Y3llowDuck/RDP-Automation.git
```
### 2. Make sure you can execute PS scripts

```PowerShell
Set-ExecutionPolicy Bypass -Scope CurrentUser -Force
Get-ExecutionPolicy -Scope CurrentUser
```

## Example Output

Here’s an example of what running the script looks like:

![Example Output 1](https://github.com/Y3llowDuck/RDP-Automation/blob/main/1.png)

![Example Output 2](https://github.com/Y3llowDuck/RDP-Automation/blob/main/2.png)





