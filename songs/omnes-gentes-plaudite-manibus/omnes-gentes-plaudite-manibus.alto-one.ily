AltoOneMusic = \relative c' {
	\set Staff.instrumentName = #"Altus I"
	\set Staff.shortInstrumentName = "A I"

	\incipit { \clef "mensural-c3" \globalkey \globaltime e'1 }

	e1 | d | f | e2 g( | g4) g e2 | g f |
	e e4. e8 | e4 e e2 | e f( | f) e | fis g4 g | g4. e8 g2 | g1 |
	\repeat unfold 11 {R |}
	% s 122
	r2 e | d e | g2. g4 | g2 g | g1 | r2 e | f e | r g | a g4 g | f d e d | d1 |
	\repeat unfold 6 { R |}
}
