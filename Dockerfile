FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir aiohttp

WORKDIR /app
COPY toa_internal.py .
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

EXPOSE 7784

ENV TOA_PORT=7784

HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
    CMD curl -f http://localhost:7784/health || exit 1

ENTRYPOINT ["./entrypoint.sh"]
