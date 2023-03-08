## Specify the base image we need for our go app
FROM golang:1.12.0-alpine3.9
## we create an /.app dir. within our image that will hold our app src files
RUN mkdir /app
## we copy everything in the root dir
## into our /app dir
ADD . /app
## we specify that we now wish to execute any further commands inside our /app dir
WORKDIR /app
## we go run go build to compile the binary exec of our Go program
RUN go build -o main .
## our start command which kicks off our newly created binary exec
CMD ["/app/main"]