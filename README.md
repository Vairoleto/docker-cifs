# docker-cifs
Docker alpine container with cifs-utils to mount a windows share, and rsync to move files from the Host (and other containers) to the winshare.

Run with the following flags:

```
docker run -d --privileged --cap-add=MKNOD --cap-add=SYS_ADMIN --device=/dev/fuse vairoleto/docker-cifs
```

This container have a mount folder that can be used to share files between other containers and the windows share. Just add the "-v" flag

```
docker run -d -v /linuxFolder:/mnt/openvpn --privileged --cap-add=MKNOD --cap-add=SYS_ADMIN --device=/dev/fuse vairoleto/docker-cifs
```

Edit the windows path and credentials on the Dockerfile.


# TODO
*Use "ARG" instead of hardcode variables
https://docs.docker.com/engine/reference/builder/#arg

*Use volume maps to share the windows mount with other containers.
