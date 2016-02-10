#!/bin/bash

for x in /sys/class/block/nbd* ; do
    if [ `cat $x/size` != "0" ]
    then
        echo /dev/`basename $x` ": in use"
        # qemu-nbd -c /dev/`basename $x` some_file.img
        # break
    else
        echo /dev/`basename $x` ": empty"
    fi
done