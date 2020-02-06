FROM digdag/digdag-build:20170228T062524-309738ae71c4642d72e2978568fea14a84d0f2a9

ARG DIGDAG_VERSION=0.9.19

RUN cd /root \
    && git config --global user.email "root@example.com" \
    && git config --global user.name "root" \
    && git clone https://github.com/treasure-data/digdag.git \
    && cd digdag \
    && git checkout -b temp refs/tags/v${DIGDAG_VERSION} \
    && git cherry-pick 3f665b6ec28e7c73c1cc803a078dfbfa0e13cb2f -X theirs \
    && git cherry-pick 49b787098c2ec9f195ffaa5e1dab49179efb4e27 -X theirs \
    && git cherry-pick a6d2595e12201a033b83b2df684ac44a970fabc8 -X theirs \
    && ./gradlew cli

