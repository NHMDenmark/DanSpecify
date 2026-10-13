LOG=/root/mountlog.txt
MOUNT=/mnt/SCI-SNM-specify-mediadata
URL="http://localhost/fileget?coll=TEST&type=O&filename=test.png"

date >> "$LOG"

# Touch the mount to trigger reconnect
timeout 15 ls "$MOUNT" >/dev/null 2>&1

# Test file download
if curl -fsS -o /dev/null "$URL"; then
    echo "Service up" >> "$LOG"
else
    echo "Service down" >> "$LOG"
    echo "Service is down" | mail -s "specifyapp01fl " fedor.steeman@snm.ku.dk esh@adm.ku.dk
    /bin/docker compose  --project-directory "/root/specify" restart
    echo "Service restarted" | mail -s "specifyapp01fl " fedor.steeman@snm.ku.dk esh@adm.ku.dk
fi

# Optional mount diagnostics
if mountpoint -q "$MOUNT"; then
    echo "Path is working" >> "$LOG"
    mount | grep specify-mediadata | cut -d',' -f1,11 >> "$LOG"
else
    echo "Path is reporting host down" >> "$LOG"
    mount | grep specify-mediadata | cut -d',' -f1,11 >> "$LOG"
#    umount /mnt/groupdir
#    mount -a
fi


echo "-----------------------------------" >> "$LOG"