FROM existenz/base

RUN apk -U add git python unrar && rm -rf /tmp && rm -rf /var/cache/apk/*

EXPOSE 8081


