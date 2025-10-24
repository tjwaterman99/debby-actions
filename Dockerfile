FROM python:3.13-slim

WORKDIR /app

RUN pip install --no-cache-dir debby-cli==0.2.1

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]