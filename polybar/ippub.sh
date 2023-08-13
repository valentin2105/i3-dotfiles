#!/bin/bash


ip=$(curl -s https://ifconfig.nautile.tech)
echo "$ip" || exit 1
