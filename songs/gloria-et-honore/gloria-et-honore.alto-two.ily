AltoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus II"
	\set Staff.shortInstrumentName = "A II"

	\incipit { 
		\clef "mensural-c3" \key d \minor \time 2/2 
		r\maxima d'2. 
	}

	R\breve | R | R | R | 
	r2 d2. d4 d2 | es f f1 | f2 f4 a a f a2 | a1 a2. a4 |
	f1 r1 | R\breve | r2 d1 c2 | d f4 g2 f4 f2 |

% 2
	f1 r | R\breve | r2 f1 d2 | f f4 f2 d4 f2 |
	f1 r | R\breve | r2 g f4 es2 es4 | d d2 d4 g, es' d2 |
	d1 r | g2. f4 f d d2 | d d4 d g, g c2 | d d4 d g, g c2 |

% 3
	d1 r | R\breve | r2 d1 cis2 | d2 es4 f2 d4 f2 |
	d1 r | R\breve | r2 g f4 es2 es4 | d d2 d4 g, es' d2 |
	d1 r | g2. f4 f d d2 | d d4 d g, g c2 | d d4 d g, g c2 |
	d\breve\fermata \bar "|."
}

