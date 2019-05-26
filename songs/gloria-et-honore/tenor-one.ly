TenoreOneMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor 1"
	\set Staff.shortInstrumentName = "T1"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 g2. }

	\clef "treble_8"
	g2. g4 b2 b | c( d2. cis4) cis2 | d a4 a cis d e2 | f1 e2. e4 |
	d1 r1 | r\breve | r\breve | r\breve |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

