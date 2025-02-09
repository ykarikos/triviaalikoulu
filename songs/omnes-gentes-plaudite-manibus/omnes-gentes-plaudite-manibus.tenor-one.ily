TenoreOneMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor I"
	\set Staff.shortInstrumentName = "T I"

	\incipit { \clef "mensural-c4" \globalkey \globaltime c'1 }

	\clef "treble_8"
	c1 | h | c1 | c2 d( | d4) e cis2 | d d |
	h c4. h8 | a4 h c2 | h d( | d) cis | d d4 e | h4. c8 d2 | c1 |
	\repeat unfold 3 {R |}
}
