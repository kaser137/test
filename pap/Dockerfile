FROM ubuntu:latest
LABEL authors="alexander"
ENV GIT_DISCOVERY_ACROSS_FILESYSTEM=1
RUN apt update
RUN apt install -y git-core

#Адрес для клонирования
ARG url=https://github.com/kaser137/test.git

ARG path=test/.git

#Ветка по умолчанию
ARG branch=master

WORKDIR alex
RUN echo '#!/bin/bash' > init.sh
RUN  echo 'if ["'"$path"'"] ; then git pull; else rm -rf test && git clone "'"$url"'" -b "'"$branch"'"; fi' >> init.sh
RUN echo sleep 720 >> init.sh
RUN chmod a+x init.sh

#----------------------------------------------------

ENTRYPOINT "/alex/init.sh"