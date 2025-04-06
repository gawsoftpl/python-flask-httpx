# Wybieramy oficjalny obraz Pythona
FROM python:3.13-alpine

# Ustawiamy katalog roboczy
WORKDIR /app

# Instalujemy zależności
RUN pip install Flask httpx "httpx[socks]"

USER 1000

CMD ["python", "/app/server.py"]