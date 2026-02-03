FROM alpine:latest
WORKDIR /app
COPY app.sh .
CMD ["./app.sh"]
