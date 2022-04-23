FROM golang:1.16

WORKDIR /usr/src/

ENV REQUEST_ORIGIN=http://127.0.0.1:5000/

COPY . .

RUN go build

CMD ["./server"]