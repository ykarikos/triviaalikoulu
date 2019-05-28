
BassTwoMusic = \relative c {
	\set Staff.instrumentName = #"Bassus 2"
	\set Staff.shortInstrumentName = "B2"

	\incipit { 
		\clef "mensural-f" \key d \minor \time 2/2 
		r\maxima
		r2 d2. 
	}

	\clef bass
	r\breve | r\breve | r\breve | r\breve | 
	r2 d2. d4 d2 | c b f'1 | b,2 f'4 c a' b a2 | d,1 a'2. a4 |
	d,1 r1 |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}

