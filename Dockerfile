FROM ruby:3.4.2

# Define argumentos para o build
ARG USERNAME
ARG USER_ID
ARG GROUP_ID

ENV RAILS_ENV=development \
    RAILS_LOG_TO_STDOUT=true \
    APP_HOME=/secrets_box

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client

# Cria o grupo e usuário
RUN groupadd -g $GROUP_ID $USERNAME && \
    useradd -u $USER_ID -g $GROUP_ID -m $USERNAME && \
    chown -R $USERNAME:$USERNAME /usr/local/bundle

# Cria e configura diretórios da aplicação com permissões totais
RUN mkdir -p $APP_HOME && \
    mkdir -p $APP_HOME/tmp/cache $APP_HOME/tmp/pids $APP_HOME/tmp/sockets && \
    chown -R $USERNAME:$USERNAME $APP_HOME && \
    chmod -R 777 $APP_HOME

WORKDIR $APP_HOME

# Copia os arquivos com as permissões corretas
COPY --chown=$USERNAME:$USERNAME Gemfile* ./
USER $USERNAME
RUN bundle install

COPY --chown=$USERNAME:$USERNAME . .

RUN chmod -R 777 $APP_HOME

EXPOSE 3000