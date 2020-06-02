#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-g" \key f \major \time 2/2 c''1 }

	c1 | c2 c | d2. c4 | b2 a | b a | g1 | a | f |
	g2 a | g a | b1 | a2 f' | e e | f2. e4 | d2 c |
	d c( | c) h | c1( | c) | c | d2 e | f1 | e |
% p2
	r2 a, | a b | c c | r c( | c4) b a g |
	a2 f'( | f4) e d c | d1 | c |
	r2 a | c4 b a a | g f g2 | g a( | a4) a g2 | f1 | e |
	r2 f( | f) e | d b'( | b) a4 g | a1 |
% p3
	r2 f'( | f4) f e2 | d1 | cis |

	\break
	\repeat volta 2 {
		r2 c | a4 g a b | c2 d( | d) c( | c) h | c c |
		c4 c c c | c2 d( | d) c | f1 | e |
		r2 f | e d( | d4) d c2 | b1 | g | a2 f'( | f) e |
	% p4
		d2. d4 | c1 | d | c |
	}
	\alternative {
	  {
		 a |
	  }
	  {
		 a |
	  }
	}

	r2 c( | c) d | d c | b1 | b2 b |

    \time 4/2
    \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
    a\breve \bar "|."
}

stanzaOneLyrics = \lyricmode {
	Ah Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su,
	Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su mel -- li -- tis -- si -- me,
	mel -- li -- tis -- si -- me,
	mel -- li -- tis -- si -- me,
	mel -- li -- tis -- _ si -- me.

	Fac ti -- bi lec -- tu -- lum _ in me,
	lec -- tu -- lum in me,
	lec -- tu -- lum in __ _ _ me,
	lec -- tu -- lum in me.

	Qui -- es -- ce in me -- o, me -- o cor -- de.
	Qui -- es -- ce in me -- o, me -- o cor -- de.

	Ut nun -- quam ob -- li -- vis -- car te.
	Ut nun -- quam ob -- li -- vis -- car te.

	te.
	Ut nun -- quam ob -- li -- vis -- car te.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit {
	  \clef "mensural-c2"
	  \override Staff.KeySignature.flat-positions = #'((-5 . 5))
	  \key f \major
	  \time 2/2
	  c'1
	}

	c1 | f2 f | b2. a4 | g2 f | g f( | f) e | f1 | R |
	r2 f | d f | g1 | c,2 c' | c c | a2. a4 | b2 c | b g |
	g1 | e | r2 g | a1( | a2) g | f2. e8 d | g2 c | c c |
% p2
  a g | e a | g a( | a4) b c b | a g f e | f1 | f( | f) |
  r2 f | a4 g e f | d c d2 | e f( | f4) f e2| d1 | c |
  r2 d( | d4) d e2 | f1 | f( | f) |
% p3
  r2 a( | a4) a g2 | f1 | e |

  \repeat volta 2 {
	  r2 c | c4 c c b | a2 d( | d) e |
	  g1 | e2 g | a4 g a g | a2 b( | b) a | a1 | c |
	  r2 a | g f( | f4) f e2 | g f( | f4) e8 d e2 |
	  f a( | a) g |
	% p4
	  f2. f4 | e2 a | g f( | f) e |
  }
  \alternative {
  	{
  		f1 |
  	}
  	{
  		f1( |
  	}
  }

  f)( | f)( | f)( | f)( | f)( |

  \time 4/2
  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
  f\breve) \bar "|."
}

stanzaOneLyricsAlto = \lyricmode {
	Ah Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su,
	mel -- li -- tis -- si -- me,
	ah Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su

  Ah Je -- su mel -- li -- _ tis -- si -- me,
	mel -- li -- tis -- si -- me,
	mel -- li -- tis -- si -- me,
	mel -- li -- tis -- _ si -- me.

	Fac ti -- bi lec -- tu -- lum _ in me,
	lec -- tu -- lum in me,
	lec -- tu -- lum in me,
	lec -- tu -- lum in me.

	Qui -- es -- ce in me -- o, me -- o cor -- de.
	Qui -- es -- ce in me -- o, me -- o cor -- de.

	Ut nun -- quam ob -- li -- vis -- car __ _ _ _ te.
	Ut nun -- quam ob -- li -- vis -- car __ _ _ te.
	te. __
}


TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 r\maxima r1 c' }

	\clef "treble_8"
	\repeat unfold 5 { R1 | }
	c | c2 c | d2. c4 |
  b2 a | b a | g1 | a2 a' | g g | f d | f2. f4 | f2 e |
  d1 | c2 g' | g e | f2 f,4 g | a b c2( | c4) h8 h h2 |
% p2
  c c( | c4) c f2( | f) d | c4 b c d | e d c b | c2 c |
  c d( | d4) c b a | b1 | a |
  r2 c | a4 b c a | b c b2 | c c( | c4) c c2 | a1 | a |
  r2 a( | a4) a c2 | d1 | c( | c) |
% p3
  r2 c( | c4) c c2 | a1 | a |

  \repeat volta 2 {
	  r2 f' | f4 g f d | c2 f( | f) e |
	  d1 | c2 e | f4 g f e | f2 f( | f) f | f1 g |
	  r2 f | c d( | d4) d a2 | b1 | c | f,2 c'( | c) c |
	% p4
	  a1( | a2) c | b2. a4 | g1 |
  }
  \alternative {
  	{
	  f |
  	}
  	{
	  f |
  	}
  }

  a( | a2) b | b a | d1 | d2 d |

  \time 4/2
  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
  c\breve \bar "|."
}

stanzaOneLyricsTenor = \lyricmode {
	Ah Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su,
	ah Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su,
	ah Je -- su
	mel -- _ _ _ _ _ _ _ _ li --  tis -- si -- me,
	mel -- _ _ _ _ _ _ _ _ _ li -- tis -- si -- _ _ _ _ me.

	Fac ti -- bi lec -- tu -- lum _ in me,
	lec -- tu -- lum in me,
	lec -- tu -- lum in me,
	lec -- tu -- lum in me.

	Qui -- es -- ce in me -- o, me -- o cor -- de.
	Qui -- es -- ce in me -- o, me -- o cor -- de.

	Ut nun -- quam ob -- li -- vis -- car te.
	Ut nun -- quam ob -- li -- vis -- car te.
	te.
	Ut nun -- quam ob -- li -- vis -- car te.
}


BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

  \incipit {
    \clef "mensural-f"
    \set Staff.middleCClefPosition = #4
    \set Staff.middleCPosition = #4
    \set Staff.clefPosition = #0
    \override Staff.KeySignature.flat-positions = #'((-5 . 5))
    \key f \major
    \time 2/2
    r\maxima r1 c
  }


	\clef bass
	\repeat unfold 5 { R | }
	c | f2 f | b2. a4 | g2 f | g f( | f) e | f f |
	c' c | d2. c4 | b2 a | b c | g1 | c, | c' |
	f,( | f2) e | d1 | c | 
% p2 
	f( | f2) g | a4 g a b | c b a g | a g f e | f e d c |
	b1( | b) | f' |
	r2 f2 | f4 g a f | g a g2 | c, f( | f4) f c2 | d1 | a |
	r2 d( | d4) d c2 | b1 | f'( | f) |
% p3
	r2 f( | f4) f c2 | d1 | a |

	\repeat volta 2 {
		r2 f' | f4 e f g | a2 b( | b) c |
		g1 | c,2 c | f4 e f c | f2 b,( | b) f' | d1 | c |
		\repeat unfold 5 { R | } |
	% p4
		r2 f( | f) c | d2. d4 | a1 | b | c |
	}
	\alternative {
		{
		    f |
		}
		{
		    f |
		}
	}

	f( | f2) b, | f'2. f4 | b,1 | b2 b |

	\time 4/2
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	f'\breve \bar "|."
}

stanzaOneLyricsBass = \lyricmode {
	Ah Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su,
	ah Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su,
	ah Je -- _ su
	mel -- li -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ tis -- _ si -- me.

	Fac ti -- bi lec -- tu -- lum _ in me,
	lec -- tu -- lum in me,
	lec -- tu -- lum in me,
	lec -- tu -- lum in me.

	Qui -- es -- ce in me -- o, me -- o cor -- de.
	Qui -- es -- ce in me -- o, me -- o cor -- de.

	Ut nun -- quam ob -- li -- vis -- car te.
	te.
	Ut nun -- quam ob -- li -- vis -- car te.
}

