FROM golang:1.25.1-alpine3.22 AS builder
RUN apk add --no-cache git build-base
WORKDIR /src
COPY go.mod go.sum ./
RUN go mod download
COPY . .
ENV CGO_ENABLED=0
RUN go build -ldflags="-s -w" -o /out/converter ./...

FROM alpine:3.22
RUN apk add --no-cache ffmpeg ca-certificates
COPY --from=builder /out/converter /usr/local/bin/converter
RUN chmod +x /usr/local/bin/converter
WORKDIR /data
ENTRYPOINT ["/usr/local/bin/converter"]
CMD ["video.mp4","avi"]