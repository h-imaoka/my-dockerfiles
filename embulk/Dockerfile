FROM openjdk:8-stretch

ENV EMBULK_VERSION=0.9.16 \
    PATH_TO_EMBULK=/opt/local/embulk \
    PATH=${PATH}:/opt/local/embulk

RUN apt-get update \
    && apt-get install -y curl \
    && mkdir -p ${PATH_TO_EMBULK} \
    && curl -L "https://dl.bintray.com/embulk/maven/embulk-${EMBULK_VERSION}.jar" -o "${PATH_TO_EMBULK}/embulk" \
    && chmod +x "${PATH_TO_EMBULK}/embulk"

WORKDIR "${PATH_TO_EMBULK}"
COPY Gemfile "${PATH_TO_EMBULK}/"
RUN ${PATH_TO_EMBULK}/embulk bundle install

COPY entrypoint.sh /
COPY conf /src

ENTRYPOINT ["bash", "/entrypoint.sh"]
CMD ["embulk", "--help"]
