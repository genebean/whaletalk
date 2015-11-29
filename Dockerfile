# base image
FROM docker/whalesay:latest

# Commands for building the modified container
RUN apt-get -y update && apt-get install -y fortunes

# Things to do when the images starts up
CMD /usr/games/fortune -a |cowsay

