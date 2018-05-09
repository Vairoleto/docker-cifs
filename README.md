# docker-cifs
Docker alpine container with cifs-utils to mount a windows share

Run with the following flags:

docker run -d --privileged --cap-add=MKNOD --cap-add=SYS_ADMIN --device=/dev/fuse vairoleto/docker-cifs


Edit the windows path and credentials on the Dockerfile.


# TODO
*Use "ARG" instead of hardcode variables
https://docs.docker.com/engine/reference/builder/#arg

*Use volume maps to share the windows mount with other containers.
