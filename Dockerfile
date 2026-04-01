FROM golang:1.25.4 
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build -o tracker .
CMD ["./tracker"]