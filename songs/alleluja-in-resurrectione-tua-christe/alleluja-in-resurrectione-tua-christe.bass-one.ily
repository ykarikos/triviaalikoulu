BassOneMusic = \relative c {
	\set Staff.instrumentName = #"Bassus I"
	\set Staff.shortInstrumentName = "B I"

	\incipit { \clef "mensural-f" \key f \major \time 2/2 f1 }

	\clef bass
	f1 | d2 c | f,1 | R | f' | b2 f | g4 c, f g | c, f, b c | f,1 |
	R | R | R |
	f' | b,2 f | f'1 | r2 f, | b g | d' b | f' d | a' f | 
	c' f,4 b( | b) c g2 | c,1 | 
	\repeat unfold 5 { R | }
	f | d2 c | f,1 | R | f' | b2 f | g4 f d g | f b f g | f1 |
	R | R | R |
	r2 c( | c) c | f1 | f | r2 f | c f | b,2. b4 | f'2 c | f g |
	c,4 f d a' | d, f d a' | d, f d a' | d,1 |
	\repeat unfold 9 { R | }
	r2 c | f4 d c2 | r4 d g c, | f2 r4 c | f,2 c' | f1 |
	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
    f1 f b, | f'\breve c1 | d1. g2 f1 | b f g | c,2 f1 d2 a'1 |
    d,2 es1 f2 c1 | f,\breve r1 |
    \repeat unfold 4 { R\breve. | }
    f'1 f c | f,2 g a b c1 |
    f f c | f,2 g a b c1 |
    f f c | f2 g a b c1 |
    f, f c | f\breve. \bar "|."
}
