AltoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus II"
	\set Staff.shortInstrumentName = "A II"

	\incipit {
		\clef "mensural-c3" \globalkey \globaltime
		r\longa
		e'\longa\rest
		r\longa
		r2 c'2
	}

	\repeat unfold 12 { R1 | }
	r2 c2( | c) c | c f2( | f4) f f2 |
	e g | g4 e e d | e2 e | e1 | e2 c | a d( | d) c( | c) h | c1 |
	r2 e | d c | h g | g d' | e1 | r2 e | f e| R1 | R |
	r2 g | g g |
	% 123
	e1 | e2 fis | g g4 f( | f) d d2 | d1 |
	r2 g( | g4) g g2( | g) d | e1 |
	r2 e( | e) e | d1 | e1 | R1 | R | R |
	r2 e | f g | a a | a4 g2 g4 | e1 |
	% 124
	R | R | R |
	r2 c | d e | f g | e g4. g8 | e1 | R | R | R |
	r2 e | f2. f4 | e2 e4 g( | g) g g2 | g r4 g, | g g' g2 | g, r4 g | g g' g2 |

	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
	g\breve r1 |
}
