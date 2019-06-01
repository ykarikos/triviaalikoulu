SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 g'2 }

	g2 g2. g4 g2 | a a a1 | a2 c4( f) e d cis2 | d d1 cis2 | 
	d1 r1 | r\breve | r\breve | r\breve |
	r2 a1 g2 | a b4 c2 b4 a2 | b1 r1 | r\breve |

% 2
	r2 d1 c2 | b2 b4 a2 g4 a2 | a1 r1 | r\breve |
	r2 b2 a4 g2 g4 | f b2 a4 g g2 fis4 | g1 r1 | r\breve |
	r4 b2 b4 a g fis2 | g1 r1 |
	d2. d4 es es es2 | d 
	
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata \bar "|."
}

