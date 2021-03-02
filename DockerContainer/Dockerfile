FROM ruby:2.7.2

WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle update && bundle install

COPY . /app
