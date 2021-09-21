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
