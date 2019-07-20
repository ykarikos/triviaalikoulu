# Porin triviaalikoulun nuottikirja

![Bassus-stemmakirjan avaussivu](facsimile/bassus.jpg)

Osa Porin triviaalikoulun nuottikirjasta (1725) puhtaaksi kirjoittettuna kirjana. Tämän edition on rekonstruoinut Johannes Vesterinen ja puhtaaksikirjoittanut Yrjö Kari-Koskinen.

PDF-muotoiset nuotit löytyvät sivulta https://triviaalikoulu.sonusborealis.fi

Korjauksia ja täydennyksiä otetaan kernaasti vastaan. Varmistathan, että et käytä lähteenä tekijänoikeuden alaisia editioita (esim. Piae Cantiones -julkaisut).

## Lähteet

- [Porin triviaalikoulun ääni- eli stemmakirjat - JYX/Nuottijulkaisut](https://jyx.jyu.fi/handle/123456789/19464):
 1. [Discantus](https://jyx.jyu.fi/dspace/handle/123456789/18957)
 2. [Altus](https://jyx.jyu.fi/dspace/handle/123456789/18955)
 3. [Tenor](https://jyx.jyu.fi/dspace/handle/123456789/18958)
 4. [Bassus](https://jyx.jyu.fi/dspace/handle/123456789/18956)
- [Piae Cantiones](http://www.lillhannus.net/piae-cantiones/), edition © Mats Lillhannus, lupa käyttää lähteenä


## Kirjan latominen

Kirja on ladottu [LilyPond](http://lilypond.org/)- ja [XeLaTeX](http://xetex.sourceforge.net/)-ladontaohjelmilla. XeLaTeXin sijaan voit käyttää myös PDFLaTeX-ohjelmaa.

Yksittäiset kappaleet löytyvät `songs`-hakemiston alta ja ne voi latoa itsenäisesti LilyPondilla itsenäisiksi PDF-tiedostoiksi.

Ladonnan voi suorittaa `make`-komennolla:
* `make` tai `make triviaalikoulu.pdf` – latoo koko kirjan
* `make parts` – latoo yksittäisten kappaleiden nuotit ja midi-tiedostot erikseen kullekin stemmalle (ja erillisille kuoroille monikuoroteoksissa)
* `make all` – latoo sekä kirjan, erilliset nuotit että html-sivun
* `make clean` – poistaa kaikki ladotut tiedostot
* `make index.html` - latoo html-sivun, jossa on linkit kaikkiin yksittäisten kappaleiden nuotteihin ja midi-stemmoihin

## Sisällys

1. Ætas carmen melodiæ (á 4) – säveltäjä: Daniel Friderici (1584-1638), suomenkieliset sanat: Hemminki Maskulainen (n. 1550–1619)
2. Christe tibi vivo (á 4) – tuntematon
3. Christus adest justus (á 4) - tuntematon
4. Gloria et honore (á 8) - säveltäjä: Jacobus Gallus (1550–1591)
5. Gud wälsigna thetta huus (á 4) – tuntematon
6. Jucundar jugiter (á 4) – säveltäjä: Daniel Friderici, suomenkieliset sanat: Hemminki Maskulainen

## Lisenssi

Tämä teos on lisensoitu [Creative Commons Nimeä-JaaSamoin 3.0 (CC BY-SA 3.0)](https://creativecommons.org/licenses/by-sa/3.0/deed.fi) -ehdoin.
