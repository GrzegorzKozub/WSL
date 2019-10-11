# WSL

Installing and configuring WSL on Windows 10

## Fresh install

The steps to enable WSL and install fully configured Ubuntu distro are the following:

1. Run `Enable-WSL.ps1` to enable WSL feature and restart Windows
2. Run `Install-Ubuntu.ps1` to install Ubuntu 18.04 to `D:\WSL` and create your user account
3. To disable password requirement for `sudo`, run `sudo visudo` and replace `%sudo ALL=(ALL:ALL) ALL` with `%sudo ALL=(ALL:ALL) NOPASSWD:ALL`
4. Re-open `wsl`
5. Run `config.sh` to configure Ubuntu
6. Run `apps.sh` to install the apps

## Manual registration

Currently `wsl.exe` does not support registering an existing distro installation location. To work around this:

1. Go to `D:\WSL\Ubuntu-18.04`
2. Rename `rootfs` foder to `rootfs.backup`
3. Run `ubuntu1804.exe` to install a fresh instance and fix the WSL registration
4. Replace `rootfs` folder with your original `rootfs.backup`
