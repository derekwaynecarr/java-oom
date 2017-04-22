#!/bin/bash

# This must be run as root.
echo 0 > /proc/sys/vm/nr_hugepages

echo $(cat /proc/meminfo | grep HugePages)