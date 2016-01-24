FROM base/archlinux:latest
MAINTAINER niris <nirisix@gmail.com>

RUN pacman -Sy archlinux-keyring --noconfirm && pacman-db-upgrade
RUN pacman -Su base base-devel --noconfirm && pacman-db-upgrade

RUN mkdir -p /opt/ocserv
WORKDIR /opt/ocserv
COPY ./PKGBUILD /opt/ocserv
RUN chmod -R 777 /opt/ocserv
RUN echo "nobody ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN sudo -u nobody makepkg -sci --noconfirm && pacman-db-upgrade

CMD ["/usr/bin/ocserv", "--config", "/opt/ocserv/configs/ocserv.conf", "--foreground",  "--debug", "1"]

COPY ./configs /opt/ocserv/configs
