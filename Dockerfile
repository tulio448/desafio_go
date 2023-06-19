FROM golang:1.20

WORKDIR /usr/src/app

COPY ./app/* ./
RUN go mod download && go mod verify


COPY . . 
RUN go build -v -o /usr/local/bin/app ./...

CMD ["app"]