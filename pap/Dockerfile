FROM ubuntu:latest
LABEL authors="alexander"

RUN apt update
RUN apt install -y git-core

#Адрес для клонирования
ARG url=https://github.com/kaser137/test.git

#Ветка по умолчанию
ARG branch=master

WORKDIR alex
RUN echo '#!/bin/bash' > init.sh
RUN  echo 'if cd test; then git pull; else git clone "'"$url"'" -b "'"$branch"'"; fi' >> init.sh
RUN echo sleep 180 >> init.sh
RUN chmod a+x init.sh

#----------------------------------------------------

ENTRYPOINT "/alex/init.sh"