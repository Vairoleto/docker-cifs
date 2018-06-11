FROM alpine
RUN mkdir /mnt/winshare && \
    mkdir /mnt/openvpn && \
    apk update && \
    apk add cifs-utils && \
    apk add rsync && \
    echo "//$winshare/path    /mnt/winshare    cifs    uid=0,gid=0,user=$user,password=$pawd,_netdev 0 0" >> /etc/fstab
CMD mount -a ; sleep 365d
