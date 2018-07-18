FROM golang:1.8
WORKDIR /
COPY app /app
ENV AWS_REGION ap-southeast-2
CMD ["/app"]
