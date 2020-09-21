FROM golang
WORKDIR /home
COPY hello/go.mod /home
COPY hello/hello.go /home
RUN ["go", "build", "hello.go"]
RUN ["go", "install", "hello.go"]
ENTRYPOINT ["hello"]