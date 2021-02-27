FROM ruby

WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails

ENTRYPOINT [ "/bin/bash" ]

#docker build
#docker-compose up -d
#docker-compose rails server -p 3000 -b 0.0.0.0