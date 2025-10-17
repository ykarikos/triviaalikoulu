FROM ykarikos/lilypond-book:2.24.4
RUN apt-get update && apt-get install -qq -y openjdk-17-jre-headless locales
RUN curl -sO https://download.clojure.org/install/linux-install-1.10.2.774.sh
RUN bash linux-install-1.10.2.774.sh

COPY Casablanca-Antique.ttf Palatino.ttc Helvetica.ttc /usr/local/share/fonts/
RUN fc-cache

RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf
RUN locale-gen en_US.UTF-8 && DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

ENTRYPOINT ["make"]
