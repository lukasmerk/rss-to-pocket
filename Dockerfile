FROM node

RUN apt-get update && apt-get install -y ssmtp && apt-get autoclean && apt-get clean && npm i -g xquery-cli && rm /etc/ssmtp/ssmtp.conf
COPY rss-to-pocket /
VOLUME [ "/savedurl.list", "/etc/ssmtp/ssmtp.conf" ]

ENTRYPOINT [ "/rss-to-pocket" ]
