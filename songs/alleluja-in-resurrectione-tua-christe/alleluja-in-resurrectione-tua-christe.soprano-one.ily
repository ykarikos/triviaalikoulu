SopranoOneMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \key f \major \time 2/2 f'1 }

	f1 | f2 g | a1 | R | c | b2 a | g4 g a g | g f f e | f1 | R |
	R1 | R1 | a1 | b2 c | d4 c a b | c2 c, | d2. e4 | f2. g4 |
	a2. b4 | c2 c | c c4 d( | d) c2 h4 | c1 | 
	R1 | R | R | R | R |
	f, | f2 g | a1 | R | c | b2 a | g4 a a g | a b a g | a1 |
	R | R | R |
	r2 c( | c) c | a1( | b) | c2 a | g a | b2. b4 | a2 g | a g |
	g4 a d cis | d a d cis | d a d cis | d1 |
	\repeat unfold 	9 { R | }
	r2 g, | a4 b c2 | r4 b g g | a2 r4 c | c2 c | c1 |

	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
	c1 c b | a\breve g1 | fis1. g2 a1 | b a g | g2 a1 d2 cis1 |
	d2 b1 a2 g1 | a\breve r1 | 
	\repeat unfold 4 { R\breve. | }
	a1 a g | a2 b c d c1 |
	c a g | a2 b c d c1 |
	c a g | a2 b c d c1 |
	c a c | c\breve. \bar "|."
}
