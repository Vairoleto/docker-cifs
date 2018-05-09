FROM alpine
RUN mkdir /mnt/winshare && \
    apk update && \
    apk add cifs-utils && \
    echo "//10.1.4.29/corp/WorkGroup/sistemas/Tecnologia/PerfilesVPN    /mnt/winshare    cifs    uid=0,gid=0,user=usuario.sistemas,password=sistemas001,_netdev 0 0" >> /etc/
fstab
CMD mount -a ; sleep 365d
