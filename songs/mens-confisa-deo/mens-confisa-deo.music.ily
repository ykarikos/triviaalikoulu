#(set-global-staff-size 16)

globalkey = {
	\key c \major
}

globaltime = {
	\time 2/2
}

globaltempo = {
	\tempo 4 = 130
}

global = {
%  \numericTimeSignature
  \globaltime
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \globalkey
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-c1" \globalkey \globaltime a'2. }

  \repeat volta 2 {
		a2. h4 | c d c2 | h4 e c c | h a r e' | c c h a |
		a gis a h | c8 h c d e2 | d4 c h2 | a4 e a h | c g r d' |
		c h e2( | e8) d d4. c8 c4 | h8 h a4. gis16 fis gis4 | a1 |
	}
% p2
	\repeat volta 2 {
		\time 3/1
		a1 g c | h\breve a1 | gis\breve r1 | g a h | c\breve d1 | h\breve r1 |
		gis a h | c\breve h1 |
		\time 2/2 c2 r4 c | h4. h8 h4 a | a gis r a |
		h4. c8 h4 a | gis a r a | a4. h8 g4 g | fis g r h | e,8 fis g a h4 c |
% p3
		h8 a h c h4 a | g8 f g a g4 a | h8 a h c h4 a | g8 e a4. gis16 fis16 gis4 |
		a h c d | e2 d4 cis | d4. c8 h4 a | g8 e a4. gis16 fis gis4 | a1
	}
}

stanzaOneLyrics = \lyricmode {
	Mens con -- fi -- sa De -- o,
  nun -- quam con -- fu -- sa 
  nun -- quam con -- fu -- _ sa 
  nun -- quam con -- fu -- _ _ _ sa 
  re -- ce -- _ dit,
  nun -- quam con -- fu -- sa 
  nun -- quam con -- fu -- _ sa 
  re -- ce -- _ dit,
  re -- ce -- _ _ dit.
  Sed fru -- i -- tur vo -- to,
  sed fru -- i -- tur vo -- to,
  sed fru -- i -- tur vo -- to,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- _ _ la fa -- ta
  ma -- _ _ la fa -- ta
  ma -- _ _ la fa -- ta
  ma -- _ _ la fa -- ta
  ti -- _ _ _ _ _ met,
  nec ma -- la fa -- _ _ _ _ _ ta
  ti -- _ _ _ _ _ met.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \globalkey \globaltime e'2. }

  \repeat volta 2 {
		e2. g4 | a a gis2 | gis4 gis a e | e e r gis | a e e e |
		f e fis e | c2 g'( | g4) e e2 | cis2. e4 | e2 r4 g |
		g1 | g2 r4 e | e c8 d e2 | e1
	}
% p2
	\repeat volta 2 {
		\time 3/1
		e1 e g | g\breve e1 | e\breve r1 | e e g | a\breve a1 | gis\breve r1 |
		e e g | g a g |
		\time 2/2
		g2 r4 g | g4. g8 g4 e | f e r e |
		g4. g8 g4 e | e e r e | fis4. g8 e4 d | d d r g | g2 g4 g |
		g2. e4 | e2. c4 | e1( | e) |
		e4 e e g | g2. e4 | f1 | e | e |
	}
}

stanzaOneLyricsAlto = \lyricmode {
	Mens con -- fi -- sa De -- o,
  nun -- quam con -- fu -- sa 
  nun -- quam con -- fu -- _ sa 
  nun -- quam con -- fu -- sa 
  re -- ce -- dit,
  nun -- quam con -- fu -- sa 
  re -- ce -- _ _ _ dit.
  Sed fru -- i -- tur vo -- to,
  sed fru -- i -- tur vo -- to,
  sed fru -- i -- tur __ _ vo -- to,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- la fa -- ta fa -- ta __ _ ti -- met,
  nec ma -- la fa -- _ ta ti -- met.
}


TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \globalkey \globaltime cis'2. }

	\clef "treble_8"
	cis2. d4 | f f e2 | e2
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

BassMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \globalkey \globaltime a2. }

	\clef bass
	a2. g4 | f d e2 | e2 
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}
