#!/bin/bash
echo "upgrade vmware"
#sudo vmware-modconfig --console --install-all vmware.txt
sleep 30s
echo "running master node with ip 192.168.0.155"
vmrun start /home/arribajim/vmware/master-node/master-node.vmx nogui
echo "starting worker node 1 192.168.0.205"
vmrun start /home/arribajim/vmware/worker-node-1/worker-node-1/worker-node-1.vmx nogui
echo "starting worker node 2 192.168.0.223"
vmrun start /home/arribajim/vmware/worker-node-2/worker-node-2.vmx nogui
echo "starting dev-jenkins 192.168.0.138"
vmrun start /data/vmware/jenkins-dev/jenkins-dev.vmx nogui
sleep 15s
ping -c 8 192.168.0.155
ping -c 8 192.168.0.205
ping -c 8 192.168.0.223
ping -c 8 192.168.0.138
echo "done"

