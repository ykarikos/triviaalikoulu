#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 3/1
%  \autoBeamOff
  \key a \minor
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-c1" \key a \minor \numericTimeSignature \time 3/2 e'\breve }

  \set melismaBusyProperties = #'()
	\slurDashed e1( e) a | gis\breve a1 | h a\breve | gis\breve. |
  \unset melismaBusyProperties
  c\breve c1 | h\breve e1 | \omit Slur d( c) h | a\breve. |

  e\breve a1 | gis\breve a1 | h a\breve | gis\breve. |
  c\breve c1 | h\breve e1 |
  \set melismaBusyProperties = #'()
  \undo \omit Slur \slurDashed d( c) h | a\breve. |

  \repeat volta 2 {
    \unset melismaBusyProperties
    \omit Slur
    gis1 gis gis | a\breve. | a1 a a | h\breve. |
    h1 h h | c2( g c d e1) | d c\breve |
    \set melismaBusyProperties = #'()
    \time 4/2 h1. h4. c8 | d2 a4. h8 c4 g4. a8 h4 |
    e4. e8 d4 c h( a2) gis4 |
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 2/2)
      a1 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      a\breve \bar "|."
    }
  }
}

stanzaOneLyrics = \lyricmode {
	Ju -- _ cun -- da -- re ju -- gi -- ter,
  plebs de -- vo -- ta de -- bi -- tis.
  Me -- los ca -- nens dul -- ci -- ter,
  Chri -- sti Je -- su me -- _ ri -- tis.
  Qui te tu -- lit,
  qui te tu -- lit,
  qui te tu -- lit __
  a -- cri -- ter,
  vin -- cu -- lis,
  vin -- cu -- lis,
  vin -- cu -- lis,
  vin -- cu -- lis ab in -- _ ti -- mis. mis.
}

stanzaTwoLyrics = \lyricmode {
  Ain i -- loid -- ca, ain rie -- muid -- ca,
  seo -- ra -- cun -- da i -- ha -- nast.
  Cau -- nis vir -- si vei -- sad -- ca,
  Je -- su -- xen an -- si -- ost ae -- vast.
  Pii -- nal -- lans meit,
  pii -- nal -- lans meit,
  pii -- nal -- lans meit, __
  u -- los sai
  cuo -- _ lon,
  cuo -- _ lon,
  cuo -- _ lon,
  cuo -- lon rid -- hast ja kid -- _ hast. hast.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key a \minor \numericTimeSignature \time 3/2 cis'\breve }

  \set melismaBusyProperties = #'()
	\slurDashed cis1( cis) e | e\breve e1 |
  \unset melismaBusyProperties
  \omit Slur g( e) f | e\breve. |
  g\breve g1 | g\breve g1 | g( e) e | cis\breve.

  cis\breve e1 | e\breve e1 | g( e) f | e\breve. |
  g\breve g1 | g\breve g1 |
  \set melismaBusyProperties = #'()
  \undo \omit Slur \slurDashed g( e) e | cis\breve.

  \repeat volta 2 {
    e1 e e | e\breve. | e1 e e | g\breve. |
    g1 g g | g\breve. | g1 e\breve |
    \time 4/2
    e2 e4. f8 g2 d4. e8 |
    \unset melismaBusyProperties
    \omit Slur f2 c4. d8 e( d e f g2) |
    g4. g8 g4 e e2. e4 |
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 2/2)
      e1 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      e\breve \bar "|."
    }
  }
}

stanzaOneLyricsAlto = \lyricmode {
	Ju -- _ cun -- da -- re ju -- gi -- ter,
  plebs de -- vo -- ta de -- bi -- tis.
  Me -- los ca -- nens dul -- ci -- ter,
  Chri -- sti Je -- su me -- _ ri -- tis.
  Qui te tu -- lit,
  qui te tu -- lit,
  qui te tu -- lit __
  a -- cri -- ter,
  vin -- cu -- lis,
  vin -- cu -- lis,
  vin -- cu -- lis, __
  vin -- cu -- lis ab in -- ti -- mis. mis.
}

stanzaTwoLyricsAlto = \lyricmode {
  Ain i -- loid -- ca, ain rie -- muid -- ca,
  seo -- ra -- cun -- da i -- ha -- nast.
  Cau -- nis vir -- si vei -- sad -- ca,
  Je -- su -- xen an -- si -- ost ae -- vast.
  Pii -- nal -- lans meit,
  pii -- nal -- lans meit,
  pii -- nal -- lans meit, __
  u -- los sai
  cuo -- _ lon,
  cuo -- _ lon,
  cuo -- _ lon, __
  cuo -- lon rid -- hast ja kid -- hast. hast.
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key a \minor \numericTimeSignature \time 3/2 a\breve }

	\clef "treble_8"
  \set melismaBusyProperties = #'()
  \slurDashed a1( a) c |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key a \minor \numericTimeSignature \time 3/2 a\breve }

	\clef bass
  \set melismaBusyProperties = #'()
  \slurDashed a1( a) a |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}
