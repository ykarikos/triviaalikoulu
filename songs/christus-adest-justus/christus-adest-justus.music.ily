#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-c1" \key f \major \time 2/2 f'\breve }

	f\breve | f1( g) | a a | b\breve | a \breve\fermata
	a1 g2 a~( | a4 g f1 e2) | f\breve\fermata |
	a1 a2 a | b\breve | a\breve\fermata | f2 f f g |
	a1 a | a2 a b1 | a1 r2 a | a a a f | a g f1 |
% 2
	g2 g f a~( | a g4 f g f e d) | c2 f1( e2) | f\breve\fermata	f2 f g1 | a r2 a | a g a1 | r2 a a g | a1 r2 a |
	b b a1 | g2 a2.( g4) f2~ |
	\time 2/2
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	f e |
	\time 4/2
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	f\breve | a\breve | a2 g4 g f2 g |
% 3
	a2 g4 g f2 g | a2 g4 g f2 g | a1 a | g2 a b1 | a2 a a g |
	a1 g2 f | c( f1) e2 | f\breve |
	a2. a4 a2 a | a2. a4 a2 a | a2. a4 a2 a | b1 a | a2 g1( f2) |
	g\breve\fermata | c1 b | a g2 c~ | c h c a |
	b a1( g4 f) | e2 f f e |
	f\breve \bar "|."
}

stanzaOneLyrics = \lyricmode {
	Chris -- tus a -- dest jus -- tus et ser -- va -- tor.
	Rex que be -- nig -- nus,
	Chris -- tus a -- dest jus -- tus et ser -- va -- tor.
	Chris -- tus a -- dest jus -- tus et ser -- va -- tor.
	Rex que -- be -- nig -- nus,
	Plau -- de Zi -- on, lau -- da Zi -- on,
	gau -- de Zi -- on,
	mi -- tis Rex  ve -- nit ec -- ce tu -- us.
	Qui na -- tus est no -- bis
	da -- tus est no -- bis fac -- tus est ho -- mo
	Ex Ma -- ri -- a Vir -- gi -- ne de men -- te
	Pat -- ris ge -- ni -- tus.
	Gau -- de -- a -- mus,
	e -- xul -- te -- mus,
	ju -- bi -- le -- mus
	om -- nes i -- ta -- que.
	Ve -- ra sa -- lus ho -- mi -- num
	Chris -- tus in mun -- do na -- tus est.
}

stanzaOneLyricsBass = \lyricmode {
	Chris -- tus a -- dest jus -- tus et ser -- va -- tor.
	Rex que be -- nig -- nus,
	Chris -- tus a -- dest jus -- tus et ser -- va -- tor.
	Chris -- tus a -- dest jus -- tus et ser -- va -- tor.
	Rex que be -- nig -- nus,
	que be -- nig -- nus.
	Plau -- de Zi -- on, lau -- da Zi -- on,
	gau -- de Zi -- on,
	mi -- tis Rex  ve -- nit ec -- ce tu -- us.
	Qui na -- tus est no -- bis
	da -- tus est no -- bis fac -- tus est ho -- mo
	Ex Ma -- ri -- a Vir -- gi -- ne de men -- te
	Pat -- ris ge -- ni -- tus.
	Gau -- de -- a -- mus,
	e -- xul -- te -- mus,
	ju -- bi -- le -- mus
	om -- nes i -- ta -- que.
	Ve -- ra sa -- lus ho -- mi -- num
	Chris -- tus in mun -- do na -- tus est.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 c'\breve }

	c\breve | d1.( e2) | f1 f | f f~ | f f~ | f1 e2 f~( |
	f4 e d1 c2) | a\breve\fermata |
	f'\breve | f2 f f1 | f\breve\fermata | c2 c d2. e4 |
	f1 f | f2 f f1 | f1 r2 f | f f f f~ | f e f1 |
% 2
	d2.( e4) f2.( e8 d | c2. d4) e2 e | f b, c1 | a\breve\fermata |
	c2 d1 e2 | f1 r2 f | f e f1 | r2 f f e | f1 r2 f |
	f f f1 | d2 f2.( e4) d2 |
	\time 2/2
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	c1 |
	\time 4/2
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	a\breve |
	f'\breve | f2 e4 e d2. e4 |
% 3
	f2 e4 e d2. e4 | f2 e4 e d2. e4 |
	f2( e4 d) c2.( d4) | e2 f f1 | f2 f f d |
	f2.( e4) d2 c | a( c) c1 | a\breve( | c1) f2. e4 | d2 c2 f2. e4 |
	d2 c2 f1 | f2 f1 f2 | f f f f | e\breve\fermata |
	e2.( f4) g1 | c, g' |
% 4
	g1 e2 f | d f2.( e4) d2 | c b c c | a\breve |
}

TenoreMusic = \relative c {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 f\breve }

	\clef "treble_8"
	f\breve | a1( b) | c c | d\breve | c\breve\fermata | c1 c2 c~( |
	c2 b4 a g1) | f\breve\fermata | c'1 c2 c | d\breve | c\breve\fermata |
	f,2 f a b |
	c1 c | c2 c d1 | c r2 c | c c c d | c2. b4 a1 |
% 2
	b2( g) a1 | r2 a c2.( b4) | a2( f) g1 | f\breve\fermata |
	a2 a b1 | c1 r2 c | d b c1 | r2 c d b | c1 r2 c |
	d d c1 | b2 c2.( b4) a2 |
	\time 2/2
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	g1 |
	\time 4/2
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	f\breve |
	c'\breve | c2 c4 b a2 g |
% 3
	c2 c4 b a2 g | c2 c4 b a2 g |
	c1 f | e2( d4) c d1 | c2 c a b |
	c1 b2 a~ | a g4( f) g1 | f\breve |
	f'2. e4 d2 c | f2. e4 d2 c |
	f2. e4 d2 c | d1 c~ | c2 c1 c2 | c\breve\fermata |
	c1 d | f e |
% 4
	d1 c | b2 c1 b4 a | g2 f g g | f\breve |
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key f \major \time 2/2 f\breve }

	\clef bass
	f\breve | d1( g) | f f | b,\breve | f'\breve\fermata | f1 c2 f~( |
	f b, c1) | f,\breve\fermata | f'1 f2 f | b,\breve | f'\breve\fermata
	f2 f d g |
	f1 f | f2 f b,1 | f'1 r2 f | f f f d | f c f d |
% 2
	g g d f | f( e4 d c2) c | f d c1 | f,\breve\fermata |
	f'2 d g1 | f r2 f2 | d g f1 |  r2 f d g | f1 r2 f |
	b, b f'1 | g2 f f1 |
	\time 2/2
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	c |
	\time 4/2
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	f,\breve | f'\breve | f2 c4 c d2 g |
% 3
	f2 c4 c d2 g | f2 c4 c d2 g | f1 f | c2 f b,4( c d e) | f2 f f g |
	f1 b,2 f'~ | f e4( d) c1 | f\breve |
	f2. f4 f2 f | f2. f4 f2 f | f2. f4 f2 f |
	b,1 f'~ | f2 f1 f2 | c\breve\fermata |
	c1 g' | f c |
% 4
	g'1 a2 f | g f1 f2 | c d c c | f,\breve |
}
