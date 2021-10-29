FROM golang:1.16-alpine

WORKDIR cmd/app

COPY app ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /project_1

EXPOSE 8080

CMD [ "/project_1" ]
