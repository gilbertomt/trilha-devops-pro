FROM alpine:3.22
RUN apk add --no-cache ffmpeg ca-certificates
WORKDIR /usr/local/bin
COPY convert.sh ./convert.sh
RUN chmod +x ./convert.sh
WORKDIR /data
ENTRYPOINT ["/usr/local/bin/convert.sh"]
CMD ["video.mp4","avi"]