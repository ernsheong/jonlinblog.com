FROM ruby:2.5-alpine

WORKDIR /app

RUN apk update \
 && apk add --no-cache \
    build-base \
    ruby-dev \
    libxml2-dev \
    libxslt-dev \
    nodejs
# see https://github.com/gliderlabs/docker-alpine/issues/53

RUN apk add --no-cache tzdata

RUN gem install bundler:1.17.3

ADD Gemfile Gemfile.lock /app/

RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install
