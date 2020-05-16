BassOneMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus I"
	\set Staff.shortInstrumentName = "B I"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 r2 g2. }

	\clef bass
	r2 g2. g4 g2 | f d a'1 | d,2 f4 d a' b a2 | d,1 a'2. a4 |
	d,1 r1 | R\breve | R\breve | R\breve |
	r2 d1 g2 | f d4 c2 d4 f2 | b,1 r | R\breve |

% 2
	r2 b1 f'2 | b g4 a2 b4 a2 | d,1 r | R\breve |
	r2 b' f4 g2 es4 | d b2 d4 es c d2 | g,1 r | R\breve |
	r4 g'2 g4 f g d2 | g,1 r | g'2. g4 es es c2 | g' g4 g es es c2 |

%3
	g' g1 d2 | g f4 b2 g4 a2 | d,1 r | R\breve |
	r2 b' f4 g2 es4 | d b2 d4 es c d2 | g,1 r | R\breve |
	g'2. g4 f g d2 | g,1 r | g'2. g4 es es c2 | g' g4 g es es c2 |
	g'\breve\fermata \bar "|."
}


