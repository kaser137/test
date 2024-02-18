FROM python:alpine
LABEL authors="alexander"

WORKDIR /alex/test/

RUN python3 -m venv venv

COPY . .

RUN pip install -r requirements.txt

CMD ["./manage.py", "runserver", "0.0.0.0:8000"]
