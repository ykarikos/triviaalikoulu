TenoreTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor II"
	\set Staff.shortInstrumentName = "T II"

	\incipit {
		\clef "mensural-c4" \key f \major \time 2/2
		r1 a1
	}

	\clef "treble_8"
	R1 | R | a1 | a2 c | c1 | 
	R | R | R |
	a | d2 c | h4 c c h | c a b! g | a1 |
	r2 c | b a | a1 |
	\repeat unfold 6 { R | }
	e'1 | f2 e | d c | b a | g f | a g | f1 | R |
	a | a2 c | c1 | 
	R | R | R |
	c | c2 c | d4 d c h | c c c a | c1 | a( | a2) a | f1 | f |
	\repeat unfold 7 { R | }
	r2 d' | d h | c f | e1 | f2 d( | d) cis | d c! c h |
	c c( | c4) e d2 | c1 | r2 c | c4 d e2 | r4 f d e |
	c2 r4 c | a2 f |
	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
	f\breve r1 |
	\repeat unfold 5 { R\breve. | }	
	c'\breve c1 | c1. c2 a1 | h d cis | d2 d1 c h2 |
	c2 b1 b2 g1 | f\breve r1 |
	c' c c | a\breve r1 |
	c1 c c | a\breve r1 |
	c1 c a | c2 f,1 a2 f1 | f\breve. \bar "|."
}
