FROM debian:jessie-slim

RUN bash -lc "\
  apt update; \
    apt install wget apt-transport-https -y"
RUN bash -lc "\
  wget -q https://sensu.global.ssl.fastly.net/apt/pubkey.gpg -O- | apt-key add -; \
  echo 'deb     https://sensu.global.ssl.fastly.net/apt jessie main' > /etc/apt/sources.list.d/sensu.list; \
  apt update; \
  apt install sensu=0.23.3-1"
COPY start.sh /start.sh
CMD /start.sh
