FROM python:alpine
LABEL authors="alexander"

ENV GIT_DISCOVERY_ACROSS_FILESYSTEM=1


WORKDIR /alex/test/

RUN python3 -m venv venv

#RUN pip install -r requirements.txt ff

#RUN ./manage.py migrate

#CMD ["./manage.py", "runserver", "0.0.0.0:8000"]

CMD ["pip", "--version"]