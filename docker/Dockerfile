FROM lilypond-book
RUN apt-get install -qq -y openjdk-11-jre-headless
RUN curl -sO https://download.clojure.org/install/linux-install-1.10.1.492.sh
RUN bash linux-install-1.10.1.492.sh
COPY Casablanca-Antique.ttf Palatino.ttc Helvetica.ttc /usr/local/share/fonts/
RUN fc-cache
ENTRYPOINT ["make"]
