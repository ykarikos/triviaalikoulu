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
		h4. c8 h4 a | gis a r a | a4. h8 g!4 g | fis g r h | e,8 fis g a h4 c |
% p3
		h8 a h c h4 a | g8 f! g a g4 a | h8 a h c h4 a | g8 e a4. gis16 fis16 gis4 |
		a h c d | e2 d4 cis | d4. c8 h4 a | g8 e a4. gis16 fis gis4 | a1
	}
}

stanzaOneLyrics = \lyricmode {
	Mens con -- fi -- sa De -- o,
  nun -- quam con -- fu -- sa 
  nun -- quam con -- fu -- _ sa 
  nun -- quam con -- fu -- _ _ _ sa 
  re -- _ ce -- dit,
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
  nec ma -- la fa -- _ ta
  ma -- la fa -- ta
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
  nec ma -- la nec ma -- la fa -- ta ti -- met,
  nec ma -- la fa -- _ ta ti -- met.
}


TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \globalkey \globaltime cis'2. }

	\clef "treble_8"
	\repeat volta 2 {
		cis2. d4 | f f e2 | e2 r4 a, | h cis d h | r a h cis |
		d h r gis | a8 g a h c2 | h4 a2 gis4 | a2 r4 e | a h c g |
		r d' c2 | r4 h e a,8 a | g4. a8 h2 | cis1 |
	}
% p2
	\repeat volta 2 {
		\time 3/1
		c1 c e d\breve c1 | h\breve r1 | h c d | f\breve f1 | e\breve r1 |
		h cis d | e f d |
		\time 2/2
		e2 r4 e | d4. d8 d4 cis | d h r cis |
		d4. e8 d4 c! | h cis r cis | d4. d8 c!4 h | a g r d' | e2 d4 d |
% p3
		d8 c d e d4 c | h8 a h c h4 a | g8 fis g a h4 c | h a h2 |
		a4 gis a h | c2 h4 a | a a d c | h a h2 | cis1 |
	}
}

stanzaOneLyricsTenore = \lyricmode {
	Mens con -- fi -- sa De -- o,
  nun -- quam con -- fu -- sa 
  nun -- quam con -- fu -- sa 
  con -- fu -- _ _ _ sa 
  re -- _ ce -- dit,
  nun -- quam con -- fu -- sa 
  nun -- quam con -- fu -- _ sa 
  re -- _ ce -- dit.
  Sed fru -- i -- tur vo -- to,
  sed fru -- i -- tur vo -- to,
  sed fru -- i -- tur __ _ vo -- to,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- la 
  nec ma -- _ _ la fa -- ta
  ma -- _ _ la fa -- ta
  ma -- _ _ la fa -- ta
  ti -- _ _ met,
  nec ma -- la fa -- _ ta
  ma -- la fa -- ta
  ti -- _ _ met.
}


BassMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \globalkey \globaltime a2. }

	\clef bass
	\repeat volta 2 {
		a2. g4 | f d e2 | e2 r4 a | gis a d, e | r a gis a |
		d, e r e | a f c2 | g'4 a e2 | a, r | r4 e' a h |
		c g r c, | c' g a2 | e4 f e2 | a,1 |
	}
% p2
	\repeat volta 2 {
		\time 3/1
		a1 c c | g\breve a1 | e'\breve r1 | e a g | f\breve d1 | e\breve r1 |
		e a g | c f, g |
		\time 2/2
		c,2 r4 c' | g4. g8 g4 a | d, e r a |
		g4. c,8 g'4 a | e a, r a | d4. h8 c4 g | d' g, r g | c8 d e fis g4 c, |
% p3
		g'2. a4 | e2. f4 | e2. a,4 | e'1 |
		a,4 e' a g | c,8 d e f g4 a | d,1 | e | a, |
	}
}

stanzaOneLyricsBass = \lyricmode {
	Mens con -- fi -- sa De -- o,
  nun -- quam con -- fu -- sa 
  nun -- quam con -- fu -- sa 
  con -- fu -- _ sa 
  re -- _ ce -- dit,
  nun -- quam con -- fu -- sa 
  nun -- quam con -- fu -- sa 
  re -- ce -- dit.
  Sed fru -- i -- tur vo -- to,
  sed fru -- i -- tur vo -- to,
  sed fru -- i -- tur __ _ vo -- to,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- la fa -- ta ti -- met,
  nec ma -- _ _ _ _ la 
  ma -- la fa -- ta
  ti -- _ _ met,
  nec ma -- la fa -- _ _ _ _ _ ta
  ti -- met.
}
