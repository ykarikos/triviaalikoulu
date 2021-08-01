#(set-global-staff-size 16)

globalkey = {
	\key c \major
}

globaltime = {
	\time 2/2
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
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata \bar "|."
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
  nec ma -- la fa -- ta ti -- met.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \globalkey \globaltime e'2. }

	e2. g4 | a a gis2 | gis4
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
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
