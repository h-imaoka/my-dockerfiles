FROM debian:buster-slim

ENV PATH=${PATH}:/opt/amazon/java/jre/bin

RUN apt update \
    && apt install -y curl \
    && mkdir -p /opt/amazon/java \
    && curl -sL https://corretto.aws/downloads/latest/amazon-corretto-8-x64-linux-jdk.tar.gz | tar xz -C /opt/amazon/java --strip=1 --wildcards '*/jre'

CMD ["java", "-version"]
