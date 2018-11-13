FROM golang:latest
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go get -d -v github.com/gorilla/mux
RUN go install -v github.com/gorilla/mux
RUN go build -o main .
CMD ["/app/main"]
