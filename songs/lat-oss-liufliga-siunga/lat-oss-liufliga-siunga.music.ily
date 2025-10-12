#(set-global-staff-size 16)

globalkey = {
	\key c \major
}

globaltime = {
	\time 2/2
}

globaltempo = {
	\tempo 4 = 120
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

	\incipit { \clef "mensural-g" \globalkey \globaltime a'4 }

	\partial 4 a4 |
	\repeat volta 2 {
		a h c a | a a r f' | e4. e8 d4. d8 |
		cis2 r4 f | e d cis d | e a, r a | h d d cis |
	}
	\alternative {
		{ d2 r4 a | }
		{ d2 r4 f | }
	}
	\repeat volta 2 {
		e d cis d | e2 r4 f | e d cis d |
		e2 r4 e | f e f g | a2 g4 f | e d d cis |
	}
	\alternative {
		{ d2 r4 f | }
		{
			\time 4/2
			\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
			d\breve \bar "|."
		}
	}
}

stanzaOneLyrics = \lyricmode {
	Låt oss liuf -- li -- ga siun -- ga om Guds sto -- ra god -- het med hjer -- ta.
	Fruct ich jag nicht allt wackert för -- lus -- tar någ -- ting u -- thi verl -- den.
	Man ick så samma död, bär jag elska tigh, tu wähl mig.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c2" \globalkey \globaltime fis'4 }

	\partial 4 fis4 |
	\repeat volta 2 {
		fis g g fis | e e r c' | c4. c8 a4. a8 |
		a2 r4 c | c a a f | a2 fis4 fis | g a a a |
	}
	\alternative {
		{ <fis a>2  r4 fis | }
		{ <fis a>2 r4 a | }
	}
	\repeat volta 2 {
		a a a h | cis2 r4 a | a a a fis |
		a2 r4 a | a cis a c! | c2 c4 a | c4. a8 b4 a |
	}
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \globalkey \globaltime d'4 }

	\clef "treble_8"
	\partial 4 d4 | d d e d |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit {
		\clef "mensural-f" 
	    \set Staff.middleCClefPosition = #4
    	\set Staff.middleCPosition = #4
	    \set Staff.clefPosition = #0
		\globalkey 
		\globaltime 
		d4
	}

	\clef bass
	\partial 4 d4 | d' g, c d |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}
