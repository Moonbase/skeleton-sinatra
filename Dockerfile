FROM ruby:2.3.1

RUN apt-get update && apt-get install -y build-essential libpq-dev
RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install
