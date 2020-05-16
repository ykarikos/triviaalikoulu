TenoreTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor II"
	\set Staff.shortInstrumentName = "T II"

	\incipit { 
		\clef "mensural-c4" \key d \minor \time 2/2 
		r\maxima a2.
	}

	\clef "treble_8"
	R\breve | R | R | R | 
	r2 a2. a4 a 2 | c d c1 | d2 a4 a cis d e2 | f1 e2. e4 |
	d1 r | R\breve | r2 b1 g2 | a d4 es2 d4 c2 |

% 2
	b1 r | R\breve | r2 d1 b2 | c d4 a2 b4 c2 |
	b1 r | R\breve | r2 d2 d4 b2 c4 | f, g2 f4 b c a2 |
	g1 r | d'2. d4 c b a2 | g g4 d' d g, g2 | g g4 g g c, g'2 |

% 3
	g1 r | R\breve | r2 a1 a2 | a c4 c2 b4 c2 |
	b1 r | R\breve | r2 d2 d4 b2 c4 | f, g2 f4 b c a2 |
	g1 r | d'2. d4 c b a2 | g g4 d' d g, g2 | g g4 g g c, g'2 |
	g\breve\fermata \bar "|."
}

