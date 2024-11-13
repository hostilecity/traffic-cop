FROM ruby:3.3.6

ADD . /var/www

WORKDIR /var/www

CMD ["ruby", "application.rb"]
