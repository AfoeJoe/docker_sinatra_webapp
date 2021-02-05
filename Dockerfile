FROM ubuntu:16.04
LABEL maintainer="okunola_joshua@yahoo.com"
ENV REFRESHED_AT 2021-02-05
RUN apt-get update -yqq; apt-get -yqq install ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis
RUN mkdir -p /opt/webapp
EXPOSE 4567
CMD [ "/opt/webapp/bin/webapp" ]
