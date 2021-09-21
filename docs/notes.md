LXD
	snap install

Disk
	recommended to use zfs or btrfs
	recommended to use separate disk or partition

add idmap to default profile

/etc/netplan/01-network-manager-all.yaml
	Replace the ethernet interface name with the one for your system
	ifconfig will give you your ethernet device name

# Installation

Install lxd, debootstrap, and distrobuilder. Convenience scripts are installed in ~/.config/dlx/scripts after the first run.

```
dlx --help
ls -la ~/.config/dlx/scripts
```

`dlx` has a convenience command to change directories into the scripts folder.

```
dlx scripts
```

## Install dependencies

These scripts are designed to be run on a fresh Ubuntu 20.04+ install. They require `snapd` to be installed. `dlx` does not require `snapd` so you can install these depedencies another way if that is your preference. Consult linuxcontainers.org for more details.


```
dlx scripts
./debootstrap.sh
./lxd.sh
./distrobuilder.sh
```

zfsutils-linux
https://stanislas.blog/2018/02/lxc-zfs-pool-lxd/

## Network

NetworkManager - desktop
Netplan - server

## Limits

https://bayton.org/docs/linux/lxd/lxd-zfs-and-bridged-networking-on-ubuntu-16-04-lts/

/etc/security/limits
/etc/sysctl.conf
