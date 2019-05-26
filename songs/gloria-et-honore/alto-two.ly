AltoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus 2"
	\set Staff.shortInstrumentName = "A2"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 r2 d'2. }

	r\breve | r\breve | r\breve | r\breve | 
	r2 d2. d4 d2 | es f f1 | f2 f4 a a f a2 | a1 a2. a4 |
	f1 r1 |

%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
}

