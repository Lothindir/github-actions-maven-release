FROM qcastel/maven-release:0.0.35

RUN wget https://raw.githubusercontent.com/alpinelinux/alpine-chroot-install/v0.13.3/alpine-chroot-install

RUN echo 'c3005e323029637db20ec9595243ac94bb9b2226  alpine-chroot-install' | sha1sum -c 

RUN exit 1

RUN chmod +x alpine-chroot-install

COPY ./release-github-actions.sh /usr/local/bin
