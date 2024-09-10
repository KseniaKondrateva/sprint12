FROM golang:1.22

WORKDIR /app

COPY . .

RUN go mod tidy

ENV CGO_ENABLE=0 GOOS=linux GOARCH=amd64 

RUN go build -o /main

CMD ["/main"]
