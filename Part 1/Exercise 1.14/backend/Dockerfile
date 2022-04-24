FROM golang:1.16

WORKDIR /usr/src/

ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN go build

CMD ["./server"]