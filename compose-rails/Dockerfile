FROM ruby:2.3.3 AS build-env
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
COPY . /myapp

FROM ruby:2.3.3
WORKDIR /myapp
COPY --from=build-env /myapp /myapp
RUN bundle install

