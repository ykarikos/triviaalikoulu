SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit {
		\clef "mensural-c1" \globalkey \globaltime
		h'\longa\rest
		r\longa
		h'\longa\rest
		g'4.
	}

	\repeat unfold 12 { R1 | }
	g4.( f8 e4 d e f2) e4 | f2 a2( | a4) a a2 |
	g c | h4 a gis a | gis2 a( | a) gis | a g | a f( | f) e | d1 | e1 |
	r2 g | g g | h c | d g,( | g) e | r g | a g | R1 | R |
	r2 h | c h |
	% 123
	a1 | gis2 a | c h4 a( | a) g2 fis4 | g1 | r2 h( | h4) h d2 | h1 | c |
	r2 g | c c( | c h) | c1 | R1 | R | R | r2 g | a h | c d | e4 c2 h4 | c1 |
	% 124
	R | R | R |
	r2 e, | fis g | a h | c4 e2 d4 | e1 | R | R | R |
	r2 g, | a2. a4 | g2 a | h4 c2 h4 | c2 r4 g | g c2 h4 | c2 r4 g | g c2 h4 |

	% 125
	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
	c\breve r1 |
	\repeat unfold 6 { R\breve. | }
	g1. g2 g1 | a1. g2 a1 | d1. cis2 d1 | 
	% 126
	h c h | c g g |
	\globaltime g1 | R |
	g | g2 g | a1 | R |
	a | a2 a | gis1 | R | R1 | R |
	r2 c | h a |
	% 127
	h4 h a gis | a a g! g | g2 r4 h | c c h h |
	c2 e | d1 | e2 c( | c) h | c1( | c) \bar "|."
}
