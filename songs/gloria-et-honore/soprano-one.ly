SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus 1"
	\set Staff.shortInstrumentName = "C1"

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 g'2 }

	g2 g2. g4 g2 | a a a1 | a2 c4( f) e d cis2 | d d1 cis2 | 
	d1 r1 | r\breve | r\breve | r\breve |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata \bar "|."
}

