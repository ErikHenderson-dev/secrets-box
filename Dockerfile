FROM ruby:3.4.2

ENV RAILS_ENV=development \
    RAILS_LOG_TO_STDOUT=true \
    APP_HOME=/secrets_box

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/

COPY . .

EXPOSE 3000