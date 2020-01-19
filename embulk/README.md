docker image - embulk
===

# Overview

- embulk 0.9.22
- base himaoka/java:8-jre (buster + corretto8)

# Build
## add plugins
edit `Gemfile` before build.

## entrypoint.sh
Do nothing.
Example, change conf dir by env.


# Run

- Intaractive (shell)

```sh
docker run -it --rm -v $PWD:/work -w /work <image_name> bash
# embulk ...
```

- Single command

```sh
docker run -it --rm -v $PWD:/work -w /work himaoka/embulk:0.9.16 embulk preview conf/hoge.yml
```
