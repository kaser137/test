FROM python:alpine
LABEL authors="alexander"

ENV GIT_DISCOVERY_ACROSS_FILESYSTEM=1

RUN cd /alex/test/

RUN python3 -m venv venv

RUN source ./venv/bin/activate

#RUN ./venv/bin/pip3 install -r requirements.txt PPPP

#if [ -d test/.git/ ]; then cd test && git pull; else rm -rf test && git clone  https://github.com/kaser137/test.git; fi

#RUN ./manage.py migrate

#CMD ["./manage.py", "runserver", "0.0.0.0:8000"]

CMD ["pip", "--version"]