# MamoLinux Archive
This is an apt repository for MamoLinux - Impish Indri


To add this repo, type the following commands in a terminal:
```
wget --no-check-certificate -qO - https://raw.githubusercontent.com/hsbasu/mamolinux-archive/impish/data/mamolinux-keyring-2021-archive.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/mamolinux-keyring-2021-archive.gpg > /dev/null
echo "deb https://raw.githubusercontent.com/hsbasu/mamolinux-archive/impish impish main #MamoLinux" | sudo tee /etc/apt/sources.list.d/mamolinux.list
echo "# deb-src https://raw.githubusercontent.com/hsbasu/mamolinux-archive/impish impish main #MamoLinux" | sudo tee /etc/apt/sources.list.d/mamolinux.list
sudo apt update
```
