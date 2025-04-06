# Wybieramy oficjalny obraz Pythona
FROM python:3.13-alpine

WORKDIR /app

RUN pip install Flask httpx "httpx[socks]" gunicorn

USER 1000

CMD ["gunicorn", "-b", "0.0.0.0:8080", "server:app"]