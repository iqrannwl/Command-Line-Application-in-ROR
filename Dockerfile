FROM ruby:3.0.2
RUN mkdir /app 
WORKDIR /app
COPY  . .
RUN bundle install 
EXPOSE 8000
EXPOSE 3000
CMD ["rails","server","-b","0.0.0.0"]