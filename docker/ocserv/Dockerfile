FROM base/archlinux:latest
MAINTAINER niris <niris@gmail.com>


RUN pacman -Sy --noconfirm && pacman-db-upgrade
RUN pacman -S --noconfirm archlinux-keyring && pacman-db-upgrade
RUN pacman -Su --noconfirm base-devel gperf autogen libpcl gnutls http-parser libnl pam protobuf-c talloc libseccomp && pacman-db-upgrade


RUN mkdir -p /opt/ocserv
ADD ./PKGBUILD /opt/ocserv
RUN useradd -m ocserv
RUN chgrp -R ocserv /opt/ocserv
RUN chmod g+w -R /opt/ocserv
USER ocserv
WORKDIR /opt/ocserv
RUN makepkg
USER root
RUN pacman -U --noconfirm /opt/ocserv/ocserv-0.10.8-2-x86_64.pkg.tar.xz && pacman-db-upgrade
RUN mkdir -p /etc/ocserv
ADD ./ocserv/* /etc/ocserv/
