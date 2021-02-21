FROM golang:1-alpine3.10
WORKDIR /usr/src

COPY . .

RUN go build -ldflags "-s -w" -o rocks-bin .

ENTRYPOINT [ "go", "run", "rocks.go" ]