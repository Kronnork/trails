FROM golang:1.9
RUN mkdir -p /app
WORKDIR /app
ADD . /app
RUN go get github.com/gin-gonic/gin
RUN go get github.com/go-sql-driver/mysql
RUN go get github.com/jinzhu/gorm
RUN go get github.com/jinzhu/gorm/dialects/sqlite
RUN go build ./gmyapi.go
CMD ["./gmyapi"]
EXPOSE 8090
