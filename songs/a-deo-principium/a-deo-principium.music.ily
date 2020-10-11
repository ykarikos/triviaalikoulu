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

	a4. h8 c4 d | c h a2 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata \bar "|."
}

stanzaOneLyrics = \lyricmode {
	A De -- o prin -- ci -- pi -- um fi -- at nost -- rum,
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

	c4. d8 a4 a | a e' c2 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
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
	a4. g8 f4 d | a' e f2 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}
