FROM python:3.8.18-slim

WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY .  .
RUN adduser --disabled-password prod
USER prod

EXPOSE 5000
CMD ["gunicorn", "wsgi:app", "-b :5000"]

