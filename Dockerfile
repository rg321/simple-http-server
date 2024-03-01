FROM alpine:latest

LABEL maintainer="jdkelley.oss@gmail.com"

EXPOSE 4000
WORKDIR /serve

# install openssl
RUN apk --no-cache -U add openssl 

RUN apk --no-cache -U add python3 && \
    apk upgrade --no-cache -U -a  
# Patch OpenSSL vulnerability^

# ENTRYPOINT [ "python3", "-m", "http.server", "4000" ]

COPY dummy_https2.py /tmp/
ENTRYPOINT [ "python3", "/tmp/dummy_https2.py" ]