FROM docker/whalesay:latest
LABEL Name=test Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
EXPOSE 8080
CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
