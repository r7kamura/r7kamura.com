FROM ruby:2.7.4

RUN gem install bundler:2.1.4

COPY Gemfile Gemfile.lock ./
RUN bundle install
