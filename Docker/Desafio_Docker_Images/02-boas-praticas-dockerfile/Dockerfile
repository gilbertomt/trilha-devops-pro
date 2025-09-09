FROM python:3.13.7-alpine3.22
ENV PYTHONUNBUFFERED=1 \
  PIP_NO_CACHE_DIR=1
WORKDIR /app
RUN adduser -D -H -u 1000 appuser
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY --chown=appuser:appuser . .
USER appuser
EXPOSE 8000
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--workers", "2"]
