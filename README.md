# WSL

Installing and configuring WSL on Windows 10

1. Run `Enable-WSL.ps1` to enable WSL feature and restart Windows
2. Run `Install-Ubuntu.ps1` to install Ubuntu 18.04 to `D:\WSL` and create your user account
3. To disable password requirement for `sudo`, run `sudo visudo` and replace `%sudo ALL=(ALL:ALL) ALL` with `%sudo ALL=(ALL:ALL) NOPASSWD:ALL`
4. Re-open `bash` (or `wsl`)
5. Run `bootstrap.sh` to configure Ubuntu and install the apps

