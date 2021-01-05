#!/bin/sh

[ ! -d "ramdisk" ] && {
 mkdir ./ramdisk
}
cd ramdisk
CMD='zcat ../ramdisk.gz | cpio -idv'
echo "---------------------------------------"
echo "'$CMD'"
echo "---------------------------------------"
eval $CMD
