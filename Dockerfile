FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
COPY my-rest.bin /app
CMD ["/app/my-rest.bin"]

