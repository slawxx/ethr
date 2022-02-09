FROM golang:1.13

WORKDIR /app

ADD ./ /app

RUN mkdir /out && \
    go build .
    
CMD [ "/bin/bash", "-ce", "tail -f /dev/null" ]
