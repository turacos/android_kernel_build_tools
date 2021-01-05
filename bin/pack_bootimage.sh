#!/bin/sh

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
KERNEL="zImage"
RAMDISK="ramdisk.gz"
BASE="0x40000000"
BOARD="smdk4x12"
CMDLINE="console=ttySAC2,115200 buildvariant=userdebug"
KERNEL_OFFSET="0x00008000"
RAMDISK_OFFSET="0x01000000"
SECOND_OFFSET="0x00f00000"
OS_VERSION="6.0.1"
OS_PATCH_LEVEL="2021-01"
TAGS_OFFSET="0x00000100"
PAGESIZE="2048"
OUTPUT="boot-${TIMESTAMP}.img"


CMD="mkbootimg \
 --kernel $KERNEL \
 --ramdisk $RAMDISK \
--cmdline "'$CMDLINE'" \
--base $BASE \
--board $BOARD \
--kernel_offset $KERNEL_OFFSET \
--ramdisk_offset $RAMDISK_OFFSET \
--second_offset $SECOND_OFFSET \
--os_version $OS_VERSION \
--os_patch_level $OS_PATCH_LEVEL \
--tags_offset $TAGS_OFFSET \
--pagesize $PAGESIZE \
-o $OUTPUT"

echo "------------------------------------------------"
echo "' $CMD '"
echo "------------------------------------------------"
$CMD

