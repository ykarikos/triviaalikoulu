AltoOneMusic = \relative c' {
	\set Staff.instrumentName = #"Altus I"
	\set Staff.shortInstrumentName = "A I"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 r2 d'2. }

	r2 d2. d4 d2 | f f e1 | f2 a4 a a f a2 | a1 a2. a4 |
	f1 r1 | r\breve | r\breve | r\breve |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
}

