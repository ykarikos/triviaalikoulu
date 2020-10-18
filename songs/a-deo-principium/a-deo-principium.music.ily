#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key a \minor
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-g" \key d \minor \time 2/2 d''4. }

	\repeat volta 2 {
		a4. h8 c4 d | c h a2 | g4 a f2 | e1 |
		c'4. h8 a4 g | a4. g8 f4 b | g b a4. a8 | a1 |
	}
	\repeat volta 2 {
		d4 d8 d d4 c | h2 h4 d | c d h2 | a1 |
		a4 a8 a a4 d | c4. h8 a4 b |
% p2
		b a c2 | a1 |
		a4 h c d | c h a2 | e4 f g a | g f e2 |
		f4 g a h | c4. h8 a4 g8 f | e4 d a' a |
		\time 4/2
		\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
		a\breve
	}
}

stanzaOneLyrics = \lyricmode {
	\set stanza = #"1. "
	A De -- o prin -- ci -- pi -- um fi -- at nost -- rum,
	in De -- o qui ter -- mi -- num fi -- ga -- _ mus tu -- tum.
	O -- pe -- ris is -- te nos -- tri se -- cun -- det pri -- ma,
	Pros -- pe -- ra red -- dat me -- di -- a tan -- dem post re -- ma,
	ve -- lit hu -- ic con -- ces qui, u -- ni -- ver -- so coc -- tu -- i
	at -- que to -- ti do -- mu -- i pat -- _ ro -- _ ci -- na -- ri.
}

stanzaTwoLyrics = \lyricmode {
	\set stanza = #"2. "
	Ab e -- o nam -- que bo -- na cunc -- ta flu -- unt,
	ad il -- li -- bus glo -- ri -- am qunc -- _ ta re -- de -- unt.
	Ma -- ne -- ra sac -- ri fla -- tus tri -- bu -- at cunc -- tis,
	at que sin -- ce -- ro im -- bu -- at a -- mo -- re junc -- tos,
	fa -- xit hic for -- tis -- si -- mos vi -- gi -- les An -- ge -- li -- cos
	hos -- ce pro -- pe po -- pu -- los cast -- _ ra -- _ me -- ta -- ri.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { 
		\clef "mensural-c2"
		\override Staff.KeySignature.flat-positions = #'((0 . 5))
		\key d 
		\minor 
		\time 2/2 
		f'4.
	}

	\repeat volta 2 {
		c4. d8 a4 a | a e' c2 | c4 c f,8 g a4 | a1 |
		e'4. e8 c4 c | c4. c8 c4 d | d d2 cis4 | d1 |
	}
	\repeat volta 2 {
		f4 f8 f g4 e | e2 e4 f | f f e2 | cis1 |
		f4 d8 d e4 d | e c c d | 
% p2
		b c c2 | c1 | 
		f4 f f d | a h c2 | c4 c c a | c a c2 |
		f4. g8 d4 d | c c c d | cis d2 cis4 |
		\time 4/2
		\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
		d\breve
	}
}

stanzaOneLyricsAlto = \lyricmode {
	\set stanza = #"1. "
	A De -- o prin -- ci -- pi -- um fi -- at nost -- _ _ rum,
	in De -- o qui ter -- mi -- num fi -- ga -- mus tu -- tum.
	O -- pe -- ris is -- te nos -- tri se -- cun -- det pri -- ma,
	Pros -- pe -- ra red -- dat me -- di -- a tan -- dem post re -- ma,
	ve -- lit hu -- ic con -- ces qui, u -- ni -- ver -- so coc -- tu -- i
	at -- que to -- ti do -- mu -- i pat -- ro -- ci -- na -- ri.
}

stanzaTwoLyricsAlto = \lyricmode {
	\set stanza = #"2. "
	Ab e -- o nam -- que bo -- na cunc -- ta flu -- _ _ unt,
	ad il -- li -- bus glo -- ri -- am qunc -- ta re -- de -- unt.
	Ma -- ne -- ra sac -- ri fla -- tus tri -- bu -- at cunc -- tis,
	at que sin -- ce -- ro im -- bu -- at a -- mo -- re junc -- tos,
	fa -- xit hic for -- tis -- si -- mos vi -- gi -- les An -- ge -- li -- cos
	hos -- ce pro -- pe po -- pu -- los cast -- ra -- me -- ta -- ri.
}


TenoreMusic = \relative c {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 d'4. }

	\clef "treble_8"
	e4. g8 f4 f | e g a2 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 d4. }

	\clef bass
	\repeat volta 2 {
		a4. g8 f4 d | a' e f2 | c'4 a d2 | a1 |
		a4. g8 f4 c' | f,4. g8 a4 b | b g a2 | d1 |
	}
	\repeat volta 2 {
		d4 d8 d g,4 a | e'2 e4 d f d e2 | a,1 |
		d4 d8 d c4 h | a4. g8 e4 b' |
% p2
		g f c'2 | f,1 |
		f4. g8 a4 b | f g f2 | c'4. d8 e4 f | c d c2 |
		d4. e8 f4 d | a'4. g8 f4 d | a' d, a2 |
		\time 4/2
		\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
		d\breve
	}
}

stanzaOneLyricsBass = \lyricmode {
	\set stanza = #"1. "
	A De -- o prin -- ci -- pi -- um fi -- at nost -- rum,
	in De -- o qui ter -- mi -- num fi -- ga -- mus tu -- tum.
	O -- pe -- ris is -- te nos -- tri se -- cun -- det pri -- ma,
	Pros -- pe -- ra red -- dat me -- di -- a tan -- dem post re -- ma,
	ve -- lit hu -- ic con -- ces qui, u -- ni -- ver -- so coc -- tu -- i
	at -- que to -- ti do -- mu -- i pat -- ro -- ci -- na -- ri.
}

stanzaTwoLyricsBass = \lyricmode {
	\set stanza = #"2. "
	Ab e -- o nam -- que bo -- na cunc -- ta flu -- unt,
	ad il -- li -- bus glo -- ri -- am qunc -- ta re -- de -- unt.
	Ma -- ne -- ra sac -- ri fla -- tus tri -- bu -- at cunc -- tis,
	at que sin -- ce -- ro im -- bu -- at a -- mo -- re junc -- tos,
	fa -- xit hic for -- tis -- si -- mos vi -- gi -- les An -- ge -- li -- cos
	hos -- ce pro -- pe po -- pu -- los cast -- ra -- me -- ta -- ri.
}

