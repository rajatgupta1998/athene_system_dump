#!/vendor/bin/sh

block_by_name=/dev/block/bootdevice/by-name
utags=${block_by_name}/utags
utags_backup=${block_by_name}/utagsBackup

# Set correct permissions for UTAGS
/vendor/bin/chown -L mot_tcmd:system $utags
/vendor/bin/chown -L mot_tcmd:system $utags_backup
/vendor/bin/chmod -L 0660 $utags
/vendor/bin/chmod -L 0660 $utags_backup

# CLOGO
clogo=${block_by_name}/clogo
/vendor/bin/chown -L root:mot_tcmd $clogo
/vendor/bin/chmod -L 0660 $clogo

#CID
cid=${block_by_name}/cid
/vendor/bin/chown -L root:mot_tcmd $cid
/vendor/bin/chmod -L 0660 $cid
