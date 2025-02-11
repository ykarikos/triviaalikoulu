AltoOneMusic = \relative c' {
	\set Staff.instrumentName = #"Altus I"
	\set Staff.shortInstrumentName = "A I"

	\incipit { \clef "mensural-c3" \globalkey \globaltime e'1 }

	e1 | d | f | e2 g( | g4) g e2 | g f |
	e e4. e8 | e4 e e2 | e f( | f) e | fis g4 g | g4. e8 g2 | g1 |
	\repeat unfold 11 {R |}
	% s 122
	r2 e | d e | g2. g4 | g2 g | g1 | r2 e | f e | r g | a g4 g | f d e d | d1 |
	\repeat unfold 5 { R |}
	% s 123
	r2 g( | g4) g g2 | d1 | g | r2 g, | g'1 |
	g | g | r2 e | f g | a a | a4 g2 g4 | g1 |
	\repeat unfold 3 { R | }
	% s 124
	r2 c, | d e | f g | e g4. g8 | e1 | R | R | R |
	r2 e | f2. f4 | e2 e4 g( | g) g g2 | g1 | R | R |
	r2 d2 | g4 g g2 | g, r4 g | g g' g2 | g, g |

	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
	g\breve r1 |
	g'1. fis2 g1 | e1. d2 e1 | f1. e2 f1 | d c d | e c h | c\breve r1 |
	\repeat unfold 5 { R\breve. | }
}
