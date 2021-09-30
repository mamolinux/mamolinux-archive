# MamoLinux Archive
This is a blank apt repository for MamoLinux.

To add the Mamolinux Launchpad repos, run the following commands in a terminal:
```
wget --no-check-certificate -qO - https://raw.githubusercontent.com/hsbasu/mamolinux-archive/master/data/mamolinux-keyring-2021-archive.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/mamolinux-keyring-2021-archive.gpg > /dev/null
```
To use the daily build repo from Launchpad, run the following commands in a terminal:
```
RELEASE=`lsb_release -c -s | cut -d ":" -f 2`
echo "deb http://ppa.launchpad.net/mamolinux/daily-builds/ubuntu $RELEASE main #MamoLinux" | sudo tee /etc/apt/sources.list.d/mamolinux-daily-builds.list
echo "# deb-src http://ppa.launchpad.net/mamolinux/daily-builds/ubuntu $RELEASE main #MamoLinux" | sudo tee -a /etc/apt/sources.list.d/mamolinux-daily-builds.list
```

To use the stable repo from Launchpad, run the following commands in a terminal:
```
RELEASE=`lsb_release -c -s | cut -d ":" -f 2`
echo "deb http://ppa.launchpad.net/mamolinux/stable/ubuntu $RELEASE main #MamoLinux" | sudo tee /etc/apt/sources.list.d/mamolinux.list
echo "# deb-src http://ppa.launchpad.net/mamolinux/stable/ubuntu $RELEASE main #MamoLinux" | sudo tee -a /etc/apt/sources.list.d/mamolinux.list
```
