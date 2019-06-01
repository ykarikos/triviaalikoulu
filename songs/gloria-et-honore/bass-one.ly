BassOneMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus I"
	\set Staff.shortInstrumentName = "B I"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 r2 g2. }

	\clef bass
	r2 g2. g4 g2 | f d a'1 | d,2 f4 d a' b a2 | d,1 a'2. a4 |
	d,1 r1 | r\breve | r\breve | r\breve |

%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}


