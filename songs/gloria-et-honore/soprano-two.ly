SopranoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit { 
		\clef "mensural-c1" \key d \minor \time 2/2
		r\maxima
		r2 f'2. 
	}

	r\breve | r\breve | r\breve | r\breve | 
	r2 f2. f4 f2 | g b1 a2 | b2 c4 f e d cis2 | d2 d1 cis2 |
	d1 r1 | r\breve | r2 f,1 g2 | f2 a4 c2 b4 a2 |

% 2
	b1 r | r\breve | r2 a1 g2 | a2 b4 c2 b4 a2 | 
	b1 r | r\breve | r2 b2 a4 g2 a4 | b b2 a4 g g2 fis4 |
	g1 r | b2. b4 a g fis2 | g2 b4 b c c c2 | 
	b2 b4 b c c c2 |

% 3
	b1 r | r\breve | r2 f1 e2 | f g4 a2 b a4 |
	b1 r | r\breve | r2 b2 a4 g2 a4 | b b2 a4 g g2 fis4 |
	g1 r | b2. b4 a g fis2 | g2 b4 b c c c2 | 
	b2 b4 b c c g2 |
	h\breve\fermata \bar "|."
}

