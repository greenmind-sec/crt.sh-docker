FROM alpine:3.10

RUN apk add --no-cache curl jq

WORKDIR /root

ADD . .

RUN chmod +x crt.sh

ENTRYPOINT ["sh","/root/crt.sh"]
