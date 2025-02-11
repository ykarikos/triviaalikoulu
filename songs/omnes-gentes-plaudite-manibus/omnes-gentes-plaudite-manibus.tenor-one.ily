TenoreOneMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor I"
	\set Staff.shortInstrumentName = "T I"

	\incipit { \clef "mensural-c4" \globalkey \globaltime c'1 }

	\clef "treble_8"
	c1 | h | c1 | c2 d( | d4) e cis2 | d d |
	h c4. h8 | a4 h c2 | h d( | d) cis | d d4 e | h4. c8 d2 | c1 |
	\repeat unfold 11 {R |}
	% s 122
	r2 c | h c | d e | d c | h4( a g f | e2) c' | c c | r e | f e4 e | c h c a | g1 |
	\repeat unfold 5 { R |}
	% s 123
	r2 d'( | d4) d h2 | g1 | h | r2 e | d c( |
	c) g | r1 | c | c2 e | e f | e4 e2 d4 | c1 |
	\repeat unfold 3 { R | }
	% s 124
	r2 a | a c | c e | e4 c2 h4 | c1 | R | R | R |
	r2 c | c d | h cis4 d( | d) e d2 | c1 | R | R |
	r2 d | e4 e d2 | c r4 d | e e d2 | c r4 h |

	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
	e\breve r1 |
	d1. d2 d1 | c1. h2 c1 | c1. c2 c1 | h c h | c g g | g\breve r1 |
	\repeat unfold 5 { R\breve. | }
}
