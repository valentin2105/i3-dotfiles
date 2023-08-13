#!/bin/bash


ctx=$(cat /home/valentin/.kube/config |grep current-context | awk '{print $2}')
ns=$(cat /home/valentin/.kube/config |grep namespace | awk '{print $2}')
echo " $ctx - $ns" || exit 1
