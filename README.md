# Porin triviaalikoulun nuottikirja

![Bassus-stemmakirjan avaussivu](facsimile/bassus.jpg)

Osa Porin triviaalikoulun nuottikirjasta (1725) puhtaaksi kirjoittettuna kirjana. Tämän edition on rekonstruoinut Johannes Vesterinen ja puhtaaksikirjoittanut Yrjö Kari-Koskinen.

PDF-muotoiset nuotit löytyvät sivulta https://triviaalikoulu.sonusborealis.fi

Korjauksia ja täydennyksiä otetaan kernaasti vastaan. Varmistathan, että et käytä lähteenä tekijänoikeuden alaisia editioita (esim. Piae Cantiones -julkaisut).

## Lähteet

- Ensisijainen nuottilähde: [Porin triviaalikoulun ääni- eli stemmakirjat – JYX/Nuottijulkaisut](https://jyx.jyu.fi/handle/123456789/19464), 1725
	- [Discantus](https://jyx.jyu.fi/dspace/handle/123456789/18957)
	- [Altus](https://jyx.jyu.fi/dspace/handle/123456789/18955)
	- [Tenor](https://jyx.jyu.fi/dspace/handle/123456789/18958)
	- [Bassus](https://jyx.jyu.fi/dspace/handle/123456789/18956)
- [Piae Cantiones](http://www.lillhannus.net/piae-cantiones/), 1625, edition © Mats Lillhannus 2010, lupa käyttää lähteenä
- [Wanhain Suomen maan pijspain ja Kircon Esimiesten Latinan kielised laulud](https://www.doria.fi/handle/10024/59053), 1616, Hemminki Maskulainen, lähteenä _Jucundare jugiter_- ja _Ætas carmen melodiæ_ -kappaleiden suomenkielisissä sanoituksissa
- [Florilegium Portense I](https://imslp.org/wiki/Florilegium_Portense_I_(Bodenschatz%2C_Erhard)), 1618, lähteenä _Repleatur os meum_ -kappaleen tavutuksessa
- [Florilegii Musicii Portensis II](https://imslp.org/wiki/Florilegii_Musicii_Portensis_II_(Bodenschatz%2C_Erhard)), 1621, lähteenä _Anima mea expectat Dominum_ -kappaleen tavutuksessa
- [Psalm-singende Und Lobgesäng-spielende Kirche Christi In Des H. Röm. Reichs](https://books.google.fi/books?id=_IbEDNe32scC), 1704, lähteenä _Lobt Gott ihr Christen alle_ -kappaleen sanoituksessa

## Sisällys

1. Ah Jesu mellitissime – säveltäjä: Gallus Dressler (1533–1585)
1. Alleluja in resurrectione tua Christe – säveltäjä: Jacobus Gallus (1550–1591)
1. Allenaste Gud i himmelrik / Ainoan Jumalan corkiudhes (à 4) – säveltäjä: Hieronymus Praetorius (1560–1629)
1. Ætas carmen melodiæ / Äänel caunist monen mutcain (à 4) – säveltäjä: Daniel Friderici (1584-1638), suomenkieliset sanat: Hemminki Maskulainen (n. 1550–1619)
1. Anima mea expectat Dominum (à 8) – säveltäjä: Friedrich Weißensee (1560-1622)
1. Cedit hiems eminus / Tuiman talven taucomast (à 4) – säveltäjä: Daniel Friderici (1584-1638), suomenkieliset sanat: Hemminki Maskulainen (n. 1550–1619)
1. Christe tibi vivo (à 4) – säveltäjä tuntematon
1. Christus adest justus (à 4) – säveltäjä tuntematon
1. Christus factus est pro nobis (à 4) – säveltäjä tuntematon
1. Ecce quam (à 4) – säveltäjä tuntematon
1. Gaude et laetare (à 4) – säveltäjä tuntematon
1. Gloria et honore (à 8) – säveltäjä: Jacobus Gallus (1550–1591)
1. Gud wälsigna thetta huus (à 4) – säveltäjä tuntematon
1. I Herrans Tienare (à 5) – säveltäjä tuntematon
1. In te Domine speravi (à 4) – säveltäjä tuntematon
1. Isti sunt triumphatores (à 8) – säveltäjä: Jacobus Gallus
1. Jucundare jugiter / Ain iloidca, ain riemuidca (à 4) – säveltäjä: Daniel Friderici, suomenkieliset sanat: Hemminki Maskulainen
1. Laus tibi Christe (à 4) – säveltäjä tuntematon
1. Lobt Gott ihr Christen alle (à 5) – säveltäjä tuntematon
1. Mens confisa Deo (à 4) – säveltäjä tuntematon)
1. Nunc Zymphonizate (à 5) – säveltäjä: Giovanni Gastoldi (n. 1554–1609)
1. Repleatur os meum (à 8) – säveltäjä: Gabriele Fattorini (1570-1615)
1. Si Angelus de coelo (à 4) – säveltäjä tuntematon
1. Susanna se, videns (à 4) – säveltäjä: Didier Lupi (n. 1520–1560)
1. Veni Sancte Spiritus (à 4) – säveltäjä tuntematon
1. Veni Sancte Spiritus (à 4, sovitus) – säveltäjä tuntematon, sovitus: Johannes Vesterinen (1979–)
1. Veni Sancte Spiritus (longum) à 5 – säveltäjä tuntematon

## Kappaleet työn alla

Seuraavat kappaleet on rekonstruoitu ja tarkoitus kirjoittaa puhtaaksi.
* A Deo principum
* Lät oss liufliga siunga
* Omnes gentes plaudite manibus

## Kirjan latominen

Kirja on ladottu [LilyPond](http://lilypond.org/)- ja [XeLaTeX](http://xetex.sourceforge.net/)-ladontaohjelmilla. XeLaTeXin sijaan voit käyttää myös PDFLaTeX-ohjelmaa.

Yksittäiset kappaleet löytyvät `songs`-hakemiston alta ja ne voi latoa itsenäisesti LilyPondilla itsenäisiksi PDF-tiedostoiksi.

Ladonnan voi suorittaa `make`-komennolla:
* `make` tai `make triviaalikoulu.pdf` – latoo koko kirjan
* `make parts` – latoo yksittäisten kappaleiden nuotit ja midi-tiedostot erikseen kullekin stemmalle (ja erillisille kuoroille monikuoroteoksissa)
* `make all` – latoo sekä kirjan, erilliset nuotit että html-sivun
* `make clean` – poistaa kaikki ladotut tiedostot
* `make index.html` - latoo html-sivun, jossa on linkit kaikkiin yksittäisten kappaleiden nuotteihin ja midi-stemmoihin

### Yksittäisen nuotin latominen Dockerilla

1. Asenna [Docker](https://www.docker.com/)
1. Luo docker-image: [lilypond](https://github.com/ykarikos/lilypond-docker)
1. Lado yksittäinen nuotti esimerkiksi seuraavilla komennoilla:
	```
	./build-song.sh songs/ecce-quam/ecce-quam.ly
	./build-song.sh songs/ecce-quam/parts/ecce-quam.a4.ly
	cd songs/repleatur-os-meum && ../../build-song.sh parts/repleatur-os-meum.coro-I.ly
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

## Lisenssi

Tämän teoksen tekijänoikeudet on luovutettu vapaaseen yleiseen käyttöön [Creative Commons 0:n](https://creativecommons.org/publicdomain/zero/1.0/deed.fi) mukaisesti. Teosta voi lupaa pyytämättä kopioida, muokata, levittää ja esittää, mukaan lukien kaupallisessa tarkoituksessa.
