FROM alpine:latest

LABEL maintainer="jdkelley.oss@gmail.com"

EXPOSE 4000
WORKDIR /serve

RUN apk --no-cache -U add python3 && \
    apk upgrade --no-cache -U -a  
# Patch OpenSSL vulnerability^

ENTRYPOINT [ "python3", "-m", "http.server", "4000" ]
