TenoreTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor 2"
	\set Staff.shortInstrumentName = "T2"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 r2 a2. }

	\clef "treble_8"
	r\breve | r\breve | r\breve | r\breve | 
	r2 a2. a4 a 2 | c d c1 | d2 a4 a cis d e2 | f1 e2. e4 |
	d1 r1 |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

