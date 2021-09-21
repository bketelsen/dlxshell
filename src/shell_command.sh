container=${args[container]}

lxc exec $container -- su --login `whoami`