# rclone

### Transfer files from local PC to cloud

    rclone copy local_path/  -L --fast-list --max-backlog=999999 \
        --drive-chunk-size=512M --transfers=145 --checkers=145 --buffer-size=8175M --verbose cloud:/
