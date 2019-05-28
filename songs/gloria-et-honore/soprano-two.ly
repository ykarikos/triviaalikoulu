SopranoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus 2"
	\set Staff.shortInstrumentName = "C2"

	\incipit { 
		\clef "mensural-c1" \key d \minor \time 2/2
		r\maxima
		r2 f'2. 
	}

	r\breve | r\breve | r\breve | r\breve | 
	r2 f2. f4 f2 | g b1 a2 | b2 c4 f e d cis2 | d2 d1 cis2 |
	d1 r1 |

%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata \bar "|."
}

