FROM cgr.dev/chainguard/python:latest-dev AS builder
USER root
WORKDIR /app
COPY requirements.txt .
RUN python -m venv venv
RUN ./venv/bin/pip install --no-cache-dir -r requirements.txt
COPY . /app

FROM cgr.dev/chainguard/python:latest
WORKDIR /app
USER 1000
COPY --from=builder /app /app
ENV PATH="/app/venv/bin:$PATH"
ENV PROMETHEUS_MULTIPROC_DIR=/tmp/metrics
EXPOSE 5000
ENTRYPOINT ["python", "/app/entrypoint.py"]
