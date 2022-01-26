ARG MODULE_NAME=github.com/beego/beeweb

FROM golang:alpine as build
MAINTAINER astaxie xiemengjun@gmail.com
RUN go get github.com/beego/bee
WORKDIR /go/src/${MODULE_NAME}
COPY . .
RUN go get
RUN go build
RUN ls -lAh

FROM golang:alpine
WORKDIR /app
COPY --from=build\
  /go/src/${MODULE_NAME}/beeweb\
  /go/src/${MODULE_NAME}/conf\
  ./
RUN ls -lAh
EXPOSE 8080
CMD ["./beeweb"]
