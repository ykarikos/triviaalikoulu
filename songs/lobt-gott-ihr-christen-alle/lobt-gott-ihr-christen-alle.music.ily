#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 c'4 }

  \partial 4 c4 |
  \repeat volta 2 {
  	a d c b | a2 a4 e' | f4. e8 d4 d |
    e2 r4 c | d c d e | f2 e4 e | f e d c |
    b2 a4 c8 b | a4 f f e |
  }
  \alternative {
    {
      f2 r4 c' |
    }
    {
      f,2 r4 c' |
    }
  }
  \repeat volta 2 {
    d4. d8 d4 c |
    h4. h8 h4 c8 c | d4 e f d | e2 r4 e8 e |
    f2 r4 e8 e | d2 r4 c8 c | b2 r4 a8 a | g2 r4 c8 b |
    a4 a g g | a2 r4 e'8 e | f4 e8 e d4 c8 c |
    b4 a8 a g4 c8 b | a4 a g g |
  }
  \alternative {
    {
      a2. c4 |
    }
    {
      a1 \bar "|."
    }
  }  
}

% Sanojen lähde: "Psalm-singende Und Lobgesäng-spielende Kirche Christi In Des H. Röm. Reichs"
% https://books.google.fi/books?id=_IbEDNe32scC&lpg=PA64&ots=gOW-IaE6Rp&hl=fi&pg=PA64#v=onepage&q&f=true
stanzaOneLyrics = \lyricmode {
	Lobt Gott ihr Chris -- ten al -- le
  lobt Gott ins him -- mels thron,
  singt frö -- lich und mitt schal -- le
  singt frö -- lich und mitt schal -- le
  mitt den hei -- ligen En -- geln schon. Lobt schon.
  Ge -- bo -- ren ist der Her -- re Christ,
  Got -- tes und Ma -- ri -- as Son
  Mu -- si -- cirt, tri -- um -- phirt,
  ju -- bi -- lirt, mo -- du -- lirt
  lo -- bet Gott in sü -- ßen thon.
  Mu -- si -- cirt, tri -- um -- phirt,
  ju -- bi -- lirt, mo -- du -- lirt
  lo -- bet Gott in sü -- ßen thon. Ge thon.
}

SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 a'4 }

  \partial 4 a4 |
  \repeat volta 2 {
 	  c b a b | c2 c4 c | a4. c8 c4 h |
    c2 r4 a4 | a c b g | a2 g4 c | c c a a |
    f2 f4 a8 g | f4 f c' c |
  }
  \alternative {
    {
      a2 r4 a4 |
    }
    {
      a2 r4 a4 |
    }
  }
  \repeat volta 2 {
    b4. b8 b4 a |
    g4. g8 g4 a8 a | f4 c' c h | c2 r4 c8 c |
    c2 r4 c8 c | a2 r4 a8 a | f2 r4 f8 f | e2 r4 f8 d |
    c4 f e e | f2 r4 c'8 c | c4 c8 c a4 a8 a |
    f4 f8 f e4 f8 d | c4 f e e |
  }
  \alternative {
    {
       f2. a4 |
    }
    {
      f1 \bar "|."
    }
  }  
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 f'4 }

  \partial 4 f4 |
  \repeat volta 2 {
  	f f f f | f2 f4 g | f4. g8 g4 g |
    g2 r4 f | f e d c | c2 e4 g | a g f e |
    d2 c4 f8 d | c4 d c c |
  }
  \alternative {
    {
      c2 r4 f |
    }
    {
      c2 r4 f |
    }
  }
  \repeat volta 2 {
    f4. f8 f4 f |
    d4. d8 d4 f8 f | f4 g a g | g2 r4 g8 g |
    a2 r4 g8 g | f2 r4 e8 e | d2 r4 c8 c | c2 r4 a8 b |
    c4 c c c | c2 r4 g'8 g | a4 g8 g f4 e8 e |
    d4 c8 c c4 a8 b | c4 c c c |
  }
  \alternative {
    {
      c2. f4 |
    }
    {
      c1 \bar "|."
    }
  }  
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 c'4 }

	\clef "treble_8"
  \partial 4 c4 |
  \repeat volta 2 {
	  c d a b | c2 c4 c | c4. c8 d4 d |
    c2 r4 a | a a f e | c c'2 c4 | a c f, a |
    d,2 a'4 a8 b | c4 b g g |
  }
  \alternative {
    {
      f2 r4 c' |
    }
    {
      f,2 r4 c' |
    }
  }
  \repeat volta 2 {
    b4. b8 b4 c |
    g4. g8 d'4 a8 a | a4 c a d | c2 r4 c8 c |
    c2 r4 c8 c | f,2 r4 a8 a | d,2 r4 f8 f | g2 r4 a8 g |
    e4 f g g | f2 r4 c'8 c | c4 c8 c f,4 a8 a |
    d,4 f8 f g4 a8 g | e4 f g g |
  }
  \alternative {
    {
      f2. c4 |
    }
    {
      f1 \bar "|."
    }
  }  
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 f4 }

	\clef bass
  \partial 4 f4 |
  \repeat volta 2 {
  	f b a g | f2 f4 c | f4. c8 g'4 g |
    c,2 r4 f | d a b c | f,2 c'4 c | f c d a |
    b2 f4 f8 g | a4 b c c |
  }
  \alternative {
    {
      f,2 r4 f' |
    }
    {
      f,2 f' |
    }
  }
  \repeat volta 2 {
    b,4. b8 b4 f' |
    g4. g8 g4 f8 f | d4 c f g | c,2 r4 c8 c |
    f2 r4 c8 c | d2 r4 a8 a | b2 r4 f8 f | c'2 r4 f,8 g |
    a4 f c' c | f,2 r4 c'8 c | f4 c8 c d4 a8 a |
    b4 f8 f c'4 f,8 g | a4 f c' c |
  }
  \alternative {
    {
      f,2 f' |
    }
    {
      f,1 \bar "|."
    }
  }
}
