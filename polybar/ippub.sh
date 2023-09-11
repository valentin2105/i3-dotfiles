#!/bin/bash


ip=$(curl -s -4 https://ifconfig.nautile.tech)
echo "$ip" || exit 1
