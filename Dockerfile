# set the base image
FROM postgres:14.1-alpine

# update sources list
RUN apk update

# install basic apps, one per line for better caching
RUN apk add git
RUN apk add nano
RUN apk add tmux
RUN apk add wget

# install app runtimes and modules
RUN apk add python3

COPY . .

RUN echo "Hello World!!"


