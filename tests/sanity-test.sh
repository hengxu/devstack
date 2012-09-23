#!/bin/sh
nova image-list
nova image-list
nova secgroup-add-rule default TCP 22 22 0.0.0.0/0
nova secgroup-add-rule default ICMP -1 255 0.0.0.0/0
nova boot --flavor m1.tiny --image $OS_REGION_NAME-cirros-0.3.0-x86_64-uec --security_groups default $OS_REGION_NAME-server1
nova list
sudo virsh list