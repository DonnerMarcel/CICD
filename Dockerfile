FROM golang:1.24-alpine

# Set maintainer label: maintainer=[YOUR-EMAIL]
LABEL maintainer="s2410455006@students.fh-hagenberg.at"

# Set working directory: `/src`
WORKDIR /src

# Copy local file `main.go` to the working directory
COPY main.go .

# List items in the working directory (ls)
RUN ls -l

# Build the GO app as myapp binary and move it to /usr/
RUN go mod init example.com/m && go build -o myapp . && mv myapp /usr/

#Expose port 8888
EXPOSE 8888

# Run the service myapp when a container of this image is launched
ENTRYPOINT ["/usr/myapp"]
