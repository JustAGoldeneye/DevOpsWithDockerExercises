FROM golang:1.16-alpine

WORKDIR /usr/src/

ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN go build && \
    addgroup -S appgroup && adduser -S appuser -G appgroup

USER appuser

CMD ["./server"]