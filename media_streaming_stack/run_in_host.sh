# ref: https://blog.oddbit.com/post/2018-03-12-using-docker-macvlan-networks/
ip link add mynet-shim link ens18 type macvlan mode bridge
ip addr add 192.168.8.136/24 dev mynet-shim
ip link set mynet-shim up
ip route add 192.168.8.137 dev mynet-shim
