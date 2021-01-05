#!/bin/sh

[ ! -d "./ramdisk" ] && {
echo "Aborted: ramdisk folder does not exist"
exit 0 
} 
cd ramdisk
#create a ramdisk cpio archive from an existing folder
sudo find . | sudo cpio -R 0:0 -H newc -o 2>/dev/null | gzip  > ../ramdisk.gz
