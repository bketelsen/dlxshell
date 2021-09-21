#inspect_args

pushd $RECIPE_CONFIG_HOME
# build the base image
sudo distrobuilder build-lxd base.yaml
# remove the existing base image
set +e
lxc image delete luthorbase
set -e
# import the new base image
lxc image import lxd.tar.xz rootfs.squashfs --alias luthorbase
popd