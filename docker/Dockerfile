FROM lilypond-book
COPY Casablanca-Antique.ttf Palatino.ttc Helvetica.ttc /usr/local/share/fonts/
RUN fc-cache
ENTRYPOINT make
