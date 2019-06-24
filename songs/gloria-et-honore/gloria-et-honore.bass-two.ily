
BassTwoMusic = \relative c {
	\set Staff.instrumentName = #"Bassus II"
	\set Staff.shortInstrumentName = "B II"

	\incipit { 
		\clef "mensural-f" \key d \minor \time 2/2 
		r\maxima
		r2 d2. 
	}

	\clef bass
	r\breve | r\breve | r\breve | r\breve | 
	r2 d2. d4 d2 | c b f'1 | b,2 f'4 c a' b a2 | d,1 a'2. a4 |
	d,1 r | r\breve | r2 b1 es2 | d d4 c2 d4 f2 |

% 2
	b,1 r | r\breve | r2 d1 g2 | f b,4 f'2 g4 f2 |
	b,1 r | r\breve | r2 g' d4 es2 c4 | b g2 d'4 es c d2 |
	g,1 r | g'2.  b4 f g d2 | g,2 g4 g c c c2 | g g4 g c c c2 |

% 3
	g1 r  | r\breve | r2 d'1 a2 | d c4 f2 g4 f2 | 
	b,1 r | r\breve | r2 g' d4 es2 c4 | b g2 d'4 es c d2 |
	g,1 r | g'2. b4 f g d2 | g,2 g4 g c c c2 | g g4 g c c c2 |
	g\breve\fermata \bar "|."
}

