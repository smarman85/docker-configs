#!/bin/bash
watchdir=/vagrant/delete
logfile=/vagrant/log/watch.log
while : ; do
        inotifywait $watchdir|while read path action file; do
                ts=$(date +"%C%y%m%d%H%M%S")
                echo "$ts :: file: $file :: $action :: $path">>$logfile
        done
done
exit 0
