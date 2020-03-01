TenoreOneMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor I"
	\set Staff.shortInstrumentName = "T I"

	\incipit { \clef "mensural-c4" \key f \major \time 2/2 a1 }

	\clef "treble_8"
	a1 | a2 c | c1 | R | a | d2 c | h4 c c h | c a b! g | f1 |
	R | R | R |
	c' | b2 a | f1 | r2 f | f g a b | c d e f |
	f, f'4 f( | f) e d2 | c1 |
	\repeat unfold 5 { R | }
	a | a2 c | c1 | R | a | d2 c | h4 c d h | c d c h | c1 |
	R | R | R |
	r2 c( | c) c | c1 | b | a | c2 c | d2. d4 | c2 c |
	c h | c4 c f e | d c f e | d c f e | d1 |
	\repeat unfold 9 { R | }
	r2 c | c4 d e2 | r4 f c c | c2 r4 c( | c) a g2 | f1 |
	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
	a1 a d | c\breve c1 | a1. h2 c1 | d c h | c2 c1 f2 e1 |
	f2 es1 c2 c1 | c\breve r1 |
	\repeat unfold 4 { R\breve. | }
	c1 c c | a\breve. |
	c1 c c | a\breve. |
	c1 c c | a\breve. |
	f1 c' c | a\breve. \bar "|."
}
