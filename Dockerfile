FROM debian:buster

RUN apt-get update && \
    apt-get install -y curl git zsh htop locales && \
    apt-get upgrade -y -q && \
    apt-get dist-upgrade -y -q && \
    apt-get -y -q autoclean && \
    apt-get -y -q autoremove

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENTRYPOINT ["sh", "-c", "curl https://raw.githubusercontent.com/Vampouille/dot-files/master/bootstrap.sh | bash && zsh"]
