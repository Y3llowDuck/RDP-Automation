# RDP Automation Script

A PowerShell script to automate enabling Remote Desktop, creating a local administrator user, and configuring firewall rules for RDP access. This script simplifies the process, especially in environments like Evil-WinRM sessions where executing certain commands can be challenging.

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

## Example Output

Here’s an example of what running the script looks like:

![image](https://github.com/user-attachments/assets/617d7e71-978b-44ce-8fdc-a7b5ca464f05)

![image](https://github.com/user-attachments/assets/b522da68-2ca2-4da3-bc34-17dfa2c0905d)



