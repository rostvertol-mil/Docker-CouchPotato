FROM existenz/base

RUN apk update && apk -U add git python py-pip py-cffi py-lxml py-cryptography py-openssl py-libxml2 py-libxslt unrar &&\
pip install pyopenssl && pip install lxml &&\
rm -rf /tmp && rm -rf /var/cache/apk/* &&  rm -rf /home/* && \
git clone --depth 1 https://github.com/CouchPotato/CouchPotatoServer.git /app

EXPOSE 8081

CMD ["runas", "/usr/bin/python", "/app/CouchPotato.py", "--data_dir=/home"]

