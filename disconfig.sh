#!/bin/bash
#This script creates a report of our disk configuration

FILENAME='hostname'
echo "Disk report saved to $FILENAME.report"

echo -e "\n LVM configuration: \n\n" >>$FILENAME>report
ivscan >>$FILENAME.report
echo -e "\n\n partition configuration: \n\n" >>$FILENAME.report fdisk -l |head -17 >>$FILENAME.report
echo -e "\n\n mounted Filesystems: n\n" >>$FILENAME.report df -hT | grep -v >>$FILENAME.report 

