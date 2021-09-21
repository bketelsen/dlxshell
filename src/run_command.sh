container=${args[name]}

mkdir -p $HOME/projects/$container
profiles="default bridgeprofile"
profilearray=($profiles)
profilelist=""
for (( i=0; i<${#profilearray[@]}; i++ )); do
     profilelist+="--profile ${profilearray[$i]} "

done
echo $profilelist

lxc launch dlxbase $container $profilelist
lxc exec $container -- sh -c "mkdir -p /home/`whoami`/projects && chown -R `whoami`:`whoami` /home/`whoami`/projects"
lxc config device add $container dlxbind disk source=$HOME/projects/$container path=/home/`whoami`/projects/$container