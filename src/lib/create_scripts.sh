# Add any function here that is needed in more than one parts of your
# application, or that you otherwise wish to extract from the main function
# scripts.
#
# Note that code here should be wrapped inside bash functions, and it is
# recommended to have a separate file for each function.
#
# Subdirectories will also be scanned for *.sh, so you have no reason not
# to organize your code neatly.
#
create_scripts() {
cat << EOF > $SCRIPT_CONFIG_HOME/debootstrap.sh
#!/bin/bash

sudo apt-get install -y debootstrap
EOF
chmod +x $SCRIPT_CONFIG_HOME/debootstrap.sh

cat << EOF > $SCRIPT_CONFIG_HOME/distrobuilder.sh
#!/bin/bash

sudo snap install distrobuilder --classic
EOF
chmod +x $SCRIPT_CONFIG_HOME/distrobuilder.sh


cat << EOF > $SCRIPT_CONFIG_HOME/lxd.sh
#!/bin/bash

sudo snap install lxd --classic
EOF
chmod +x $SCRIPT_CONFIG_HOME/lxd.sh

cat << EOF > $SCRIPT_CONFIG_HOME/subuid.sh
#!/bin/bash
echo "root:1000:1" | sudo tee -a /etc/subuid /etc/subgid
EOF
chmod +x $SCRIPT_CONFIG_HOME/subuid.sh


cat << EOF > $SCRIPT_CONFIG_HOME/01_network-manager-all.yaml
network:
  version: 2
  renderer: NetworkManager

  ethernets:
    enxf01dbc977754:
      dhcp4: no

  bridges:
    br0:
      dhcp4: yes
      interfaces:
        - enxf01dbc977754

EOF

cat << EOF > $SCRIPT_CONFIG_HOME/bridge.profile
config: {}
description: ""
devices:
  eth0:
    name: eth0
    nictype: bridged
    parent: br0
    type: nic
name: bridgeprofile
used_by: []
EOF

cat << EOF > $SCRIPT_CONFIG_HOME/default.profile
config:
  raw.idmap: |
    both 1000 1000
description: Default LXD profile
devices:
  eth0:
    name: eth0
    network: lxdbr0
    type: nic
  root:
    path: /
    pool: default
    type: disk
name: default
used_by: []
EOF
}
