#!/bin/sh

[ ! -d "ramdisk" ] && {
 mkdir ./ramdisk
}
cd ramdisk
#CMD='gzip -dc ../ramdisk.gz | cpio -idv'
#CMD='zcat ../ramdisk.gz | cpio -idmv'
CMD='zcat ../ramdisk.gz | cpio -idv'
echo "---------------------------------------"
echo "'$CMD'"
echo "---------------------------------------"
eval $CMD
