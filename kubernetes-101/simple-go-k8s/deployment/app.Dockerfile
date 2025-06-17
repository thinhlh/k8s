FROM golang:alpine AS builder

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o ./bin/server ./cmd/server/main.go

ENTRYPOINT [ "./bin/server" ]

