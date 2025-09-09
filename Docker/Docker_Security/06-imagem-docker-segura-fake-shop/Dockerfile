FROM python:3.12.11-alpine3.22
RUN adduser -D appuser
WORKDIR /app
RUN apk add --no-cache gcc musl-dev postgresql-dev libffi-dev bash curl
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY --chown=appuser:appuser . .
RUN chmod +x /app/entrypoint.sh
RUN mkdir -p /tmp/metrics && chown appuser:appuser /tmp/metrics
ENV PROMETHEUS_MULTIPROC_DIR=/tmp/metrics
EXPOSE 5000
USER appuser
ENV FLASK_APP=index.py
ENV FLASK_ENV=production
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:5000/health || exit 1
CMD ["/app/entrypoint.sh"]
