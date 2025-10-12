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
	\alternative {
		{ fis2 r4 a | }
		{
			\time 4/2
			\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
			fis\breve \bar "|."
		}
	}
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \globalkey \globaltime d'4 }

	\clef "treble_8"
	\partial 4 d4 |
	\repeat volta 2 {
		d d e d | cis cis r a' | g4. g8 f4. f8 |
		e2 r4 a | g f e d( | d) cis d d | d f e e |
	}
	\alternative {
		{ d2 r4 d | }
		{ d2 r4 d | }
	}
	\repeat volta 2 {
		e f e f8 g | a2 r4 d, | e f e d |
		c2 r4 c4 | d e d e | f2 e4 d | e f g e |
	}
	\alternative {
		{ d2 r4 d | }
		{
			\time 4/2
			\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
			d\breve \bar "|."
		}
	}
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
	\partial 4 d4 |
	\repeat volta 2 {
		d' g, c d | a a r f | c4. c8 d4. d8 |
		a'2 r4 f | c' d a b | a2 d,4 d | g d a'2 |
	}
	\alternative {
		{ d,2 r4 d | }
		{ d2 r4 d | }
	}
	\repeat volta 2 {
		a' d a d, | a'2 r4 d, | a' d a d, |
		a'2 r4 a | d a d c | f,2 c'4 d | a d, g a |
	}
	\alternative {
		{ d,2 r4 d | }
		{
			\time 4/2
			\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
			d\breve \bar "|."
		}
	}
}
