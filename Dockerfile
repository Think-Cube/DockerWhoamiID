FROM golang:alpine3.15 AS binary
ADD . /app
WORKDIR /app
RUN go mod init http
RUN go build -o http -buildvcs=false

FROM alpine:3.15
WORKDIR /app
ENV PORT 8000
EXPOSE 8000
COPY --from=binary /app/http /app
CMD ["/app/http"]
