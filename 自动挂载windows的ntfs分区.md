
#查看磁盘名称
cndaqiangdeMacBook-Pro:data cndaqiang$ diskutil list
/dev/disk0 (internal, physical):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      GUID_partition_scheme                        *128.0 GB   disk0
   1:                        EFI ESP                     524.3 MB   disk0s1
   2:         Microsoft Reserved                         134.2 MB   disk0s2
   3:       Microsoft Basic Data OS                      113.5 GB   disk0s3
   4:           Windows Recovery                         514.9 MB   disk0s4
   5:           Windows Recovery                         12.1 GB    disk0s5
   6:           Windows Recovery                         1.2 GB     disk0s6

/dev/disk1 (internal, physical):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      GUID_partition_scheme                        *512.1 GB   disk1
   1:                        EFI                         1.0 GB     disk1s1
   2:       Microsoft Basic Data data                    322.1 GB   
   3:                 Apple_APFS Container disk2         179.0 GB   disk1s3

/dev/disk2 (synthesized):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      APFS Container Scheme -                      +179.0 GB   disk2
                                 Physical Store disk1s3
   1:                APFS Volume mac                     14.7 GB    disk2s1
   2:                APFS Volume Preboot                 45.5 MB    disk2s2
   3:                APFS Volume Recovery                509.7 MB   disk2s3
   4:                APFS Volume VM                      1.1 GB     disk2s4




#查看UUID，为了使用UUID挂载/磁盘名挂载
cndaqiangdeMacBook-Pro:data cndaqiang$ diskutil info disk1s2 | grep UUID
   Volume UUID:               573A8178-EB46-4474-8DF9-4A822A2CB2EA
   Disk / Partition UUID:     44E23EA3-9B16-4598-A2FD-38A0DC4017DC

#卸载与挂载磁盘
sudo umount /dev/disk1s2 
sudo umount /dev/disk1s2 
sudo mount -t ntfs -o nobrowse,rw /dev/disk1s2 /Users/cndaqiang/data/

# 添加到开机启动
UUID=573A8178-EB46-4474-8DF9-4A822A2CB2EA /Users/cndaqiang/data ntfs rw,auto,nobrowse
