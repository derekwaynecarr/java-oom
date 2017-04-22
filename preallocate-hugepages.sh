#!/bin/bash

# This must be run as root.

# Check that you have at least 1GB of shared memory available.
MIN_SHMMAX=$((1024 * 1024 * 1024))
ACTUAL_SHMMAX=$(cat /proc/sys/kernel/shmmax)
echo $MIN_SHMMAX
echo $ACTUAL_SHMMAX
if (( $ACTUAL_SHMMAX < $MIN_SHMMAX )); then
  echo "sys/kernel/shmmax is $ACTUAL_SHMMAX"
else
  echo "sys/kernel/shmmax setting to $MIN_SHMMAX"
  echo $MIN_SHMMAX > /proc/sys/kernel/shmmax  
fi

# NOTE: this script assumes 2MB huge page size
echo "Allocating 512 huge pages"
echo 512 > /proc/sys/vm/nr_hugepages

echo $(cat /proc/meminfo | grep HugePages)