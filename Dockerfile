FROM golang
WORKDIR /home
COPY go.mod /home
COPY hello.go /home
RUN ["go", "build", "hello.go"]
RUN ["go", "install", "hello.go"]
ENTRYPOINT ["hello"]