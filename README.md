# Porin triviaalikoulun nuottikirja

![Bassus-stemmakirjan avaussivu](facsimile/bassus.jpg)

Osa Porin triviaalikoulun nuottikirjasta (1725) puhtaaksi kirjoittettuna kirjana. Tämän edition on rekonstruoinut Johannes Vesterinen ja puhtaaksikirjoittanut Yrjö Kari-Koskinen.

PDF-muotoiset nuotit löytyvät sivulta https://triviaalikoulu.sonusborealis.fi

Korjauksia ja täydennyksiä otetaan kernaasti vastaan. Varmistathan, että et käytä lähteenä tekijänoikeuden alaisia editioita (esim. Piae Cantiones -julkaisut).

## Lähteet

- [Porin triviaalikoulun ääni- eli stemmakirjat – JYX/Nuottijulkaisut](https://jyx.jyu.fi/handle/123456789/19464):
 1. [Discantus](https://jyx.jyu.fi/dspace/handle/123456789/18957)
 2. [Altus](https://jyx.jyu.fi/dspace/handle/123456789/18955)
 3. [Tenor](https://jyx.jyu.fi/dspace/handle/123456789/18958)
 4. [Bassus](https://jyx.jyu.fi/dspace/handle/123456789/18956)
- [Piae Cantiones](http://www.lillhannus.net/piae-cantiones/), edition © Mats Lillhannus, lupa käyttää lähteenä
- [Psalm-singende Und Lobgesäng-spielende Kirche Christi In Des H. Röm. Reichs](https://books.google.fi/books?id=_IbEDNe32scC&lpg=PA64&ots=gOW-IaE6Rp&hl=fi&pg=PA64#v=onepage&q&f=true), lähteenä _Lobt Gott ihr Christen alle_ -kappaleen sanoituksessa


## Kirjan latominen

Kirja on ladottu [LilyPond](http://lilypond.org/)- ja [XeLaTeX](http://xetex.sourceforge.net/)-ladontaohjelmilla. XeLaTeXin sijaan voit käyttää myös PDFLaTeX-ohjelmaa.

Yksittäiset kappaleet löytyvät `songs`-hakemiston alta ja ne voi latoa itsenäisesti LilyPondilla itsenäisiksi PDF-tiedostoiksi.

Ladonnan voi suorittaa `make`-komennolla:
* `make` tai `make triviaalikoulu.pdf` – latoo koko kirjan
* `make parts` – latoo yksittäisten kappaleiden nuotit erikseen kullekin stemmalle (tai erillisille kuoroille monikuoroteoksissa)
* `make all` – latoo sekä kirjan että erilliset nuotit
* `make clean` – poistaa kaikki ladotut tiedostot

### Yksittäisen nuotin latominen Dockerilla

1. Asenna [Docker](https://www.docker.com/)
1. Luo docker-image: [lilypond](https://github.com/ykarikos/lilypond-docker)
1. Lado yksittäinen nuotti esimerkiksi seuraavilla komennoilla: 
	```
	docker/build-song.sh "Ecce Quam"
	docker/build-song.sh "Ecce Quam" a4
	docker/build-song.sh "Repleatur os meum" coro-I
	```

### Koko kirjan latominen Dockerilla

1. Luo docker-image [lilypond-book](https://github.com/ykarikos/lilypond-docker)
1. Kopioi seuraavat fontit `docker`-hakemistoon:
	- `Casablanca-Antique.ttf`
	- `Helvetica.ttc`
	- `Palatino.ttc`
1. Luo docker-image *triviaalikoulu-make*:
	```
	docker build -t triviaalikoulu-make docker
	```
1. Lado kirja komennolla
	```
	docker run --rm -v "$PWD:/tk" -w "/tk" triviaalikoulu-make
	```

## Sisällys

1. Ætas carmen melodiæ (à 4) – säveltäjä: Daniel Friderici (1584-1638), suomenkieliset sanat: Hemminki Maskulainen (n. 1550–1619)
1. Anima mea expectat Dominum (à 8) – säveltäjä: Friedrich Weissensee (1560-1622)
1. Christe tibi vivo (à 4) – säveltäjä tuntematon
1. Christus adest justus (à 4) – säveltäjä tuntematon
1. Christus factus est pro nobis (à 4) – säveltäjä tuntematon
1. Ecce quam (à 4) – säveltäjä tuntematon
1. Gaude et laetare (à 4) – säveltäjä tuntematon
1. Gloria et honore (à 8) – säveltäjä: Jacobus Gallus (1550–1591)
1. Gud wälsigna thetta huus (à 4) – säveltäjä tuntematon
1. I Herrans Tienare (à 5) – säveltäjä tuntematon
1. Jucundare jugiter (à 4) – säveltäjä: Daniel Friderici, suomenkieliset sanat: Hemminki Maskulainen
1. Laus tibi Christe (à 4) – säveltäjä tuntematon
1. Lobt Gott ihr Christen alle (à 5) – säveltäjä tuntematon
1. Nunc Zymphonizate (à 5) – säveltäjä: Giovanni Gastoldi (n. 1554–1609)
1. Repleatur os meum (à 8) – säveltäjä: Gabriele Fattorini (1570-1615)
1. Si Angelus de coelo (à 4) – säveltäjä tuntematon
1. Susanna se, videns (à 4) – säveltäjä: Didier Lupi (n. 1520–1560)

## Kappaleet työn alla

Seuraavat kappaleet on rekonstruoitu ja tarkoitus kirjoittaa puhtaaksi.
- Cedit hiems eminus
- Veni Sancte Spiritus (longum) à 5
- Veni Sancte Spiritus (sovitus JV)
- Veni Sancte Spiritus (originaali)
* Ainoan Jumalan korkeudes'
* Omnes gentes plaudite manibus
* Mens confisa Deo
* Ah Jesu mellitissime


## Lisenssi

Tämä teos on lisensoitu [Creative Commons Nimeä-JaaSamoin 3.0 (CC BY-SA 3.0)](https://creativecommons.org/licenses/by-sa/3.0/deed.fi) -ehdoin.
