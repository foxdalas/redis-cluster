FROM redis:alpine
ENV DEBIAN_FRONTEND noninteractive
RUN apk add --no-cache ruby wget \
  && gem install --no-rdoc --no-ri  redis -v 4.0.1
RUN wget -O /usr/local/bin/redis-trib http://download.redis.io/redis-stable/src/redis-trib.rb
RUN chmod 755 /usr/local/bin/redis-trib
CMD redis-server
