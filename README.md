# Vagrant

My boxes that I use for things and stuff.

## Windows

### Windows_10_Pro_amd64

The base Windows box from which I provision all my other Windows boxes.  Windows 10 Pro, no product key, WinRM, UAC deactivated, unrestricted PowerShell execution policy, VirtualBox Guest Additions.  Available on [Vagrant Cloud](https://app.vagrantup.com/yarsiemanym/boxes/windows_10_pro_amd64).

### Korriban

A basic .NET Framework development environment with IIS, Visual Studio 2017, and GitKraken built on top of [Windows_10_Pro_amd64](https://app.vagrantup.com/yarsiemanym/boxes/windows_10_pro_amd64)

## Ubuntu

### Ubuntu_18.04.1_Desktop_amd64

The base Ubuntu box from which I provision all my other Ubuntu boxes.  Ubuntu 18.04.1, Gnome, Minimal Installation, OpenSSH Server, VirtualBox Guest Additions.  Available on [Vagrant Cloud](https://app.vagrantup.com/yarsiemanym/boxes/windows_10_pro_amd64).

### Nar-Shaddaa

A box for things I'd rather not do on my host system.  built on top of [Ubuntu_18.04.1_Desktop_amd64](https://app.vagrantup.com/yarsiemanym/boxes/windows_10_pro_amd64)