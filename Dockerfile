FROM alpine
RUN mkdir /mnt/winshare && \
    apk update && \
    apk add cifs-utils && \
    echo "//$winshare/path    /mnt/winshare    cifs    uid=0,gid=0,user=$user,password=$pawd,_netdev 0 0" >> /etc/
fstab
CMD mount -a ; sleep 365d
