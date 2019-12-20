FROM debian:stretch

RUN apt-get update \
    && apt-get install -y build-essential wget \
    && wget http://ftp.barfooze.de/pub/sabotage/tarballs/proxychains-ng-4.14.tar.xz \
    && tar Jxf proxychains-ng-4.14.tar.xz \
    && cd proxychains-ng-4.14 \
    && ./configure \
    && make \
    && make install
