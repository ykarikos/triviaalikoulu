#(set-global-staff-size 16)

theKey = {
  \key f \major
}

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \theKey
  \set Staff.midiInstrument = #"voice oohs"
	\override Staff.TimeSignature.break-visibility = ##(#f #f #f)
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-c1" \theKey \time 2/2 c''1 }

	\repeat volta 2 {
		c1( | c2) c | a1( | a2) a | b1( | b2) b | g1 | g |
		c1 | c2 c | a c | b a | g g4 g | f1 |
		\time 4/2
		e\breve |
	}
	\repeat volta 2 {
		\time 2/2
		r2 c | d1 | f | e | r2 c | d e | f g | a a |
		\omit Slur g( f) | b1 |
		a | g2( f) | e \undo \omit Slur f( | f) e |
		\time 4/2 f\breve |
	}
	\repeat volta 2 {
		\time 2/2
		r2 a |
		\set melismaBusyProperties = #'()
		\slurDashed
		c( c) |
		\unset melismaBusyProperties
		\undo \slurDashed
		\omit Slur b4( a g b) | a1 | r | r |
		r2 a | g b | a1 | r1 |
		r2 a | 
		\set melismaBusyProperties = #'()
		\slurDashed
		\undo \omit Slur
		g f4( f) | 
		\unset melismaBusyProperties
		\undo \slurDashed
		e2 f( | f) e |
		\time 4/2 f\breve |
	}
	\repeat volta 2 {
		a\breve 
		\time 2/2 a4 a a a | a2 c |
		\time 4/2 a\breve | g\breve |
		\time 2/2 g4 g a f | g4 g a f | g4 g a f | g4 g a2( |
		a4) g f2( | f) e | \time 4/2 f\breve |
	}
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \theKey \time 2/2 f'1 }

	\repeat volta 2 {
		f1 | f2 f | f1( | f) | f | f | 
		\omit Slur
		f2( e4 d) | e1 |
		e | e2 e | f g | g c, | 
		\undo \omit Slur
		es c( | c) h4 h | 
		\time 4/2
		c\breve
    }
	    \repeat volta 2 {
		\time 2/2
		r2 e | f1 | c | c | r2 e | f c | c b | f'1 | d2 d | f1 |
% 2
		\omit Slur
		c | r2 c | e d4( b) | c1 |
		\time 4/2
		<< 
		   { \voiceOne c\breve }
		   \new Voice { 
			\voiceTwo a\breve 
		   }
		>> \oneVoice
    }
    \repeat volta 2 {
		\time 2/2
		r2 f' |
        \set melismaBusyProperties = #'()
        \slurDashed
		\undo \omit Slur
        a( a) |
        \unset melismaBusyProperties
        \undo \slurDashed
        \omit Slur
		g4( f e g) | f1 | r1 | r |
		r2 f | e d | f1 | r |
		r2 f |
        \set melismaBusyProperties = #'()
        \slurDashed
		\undo \omit Slur
		es2 c4( c) | c2 b | c1 |
		\time 4/2
		a\breve
    }
    \repeat volta 2 {
		f'\breve |
		\time 2/2
		f4 f f f | f2 a |
		\time 4/2
		f1 f | e\breve |
		\time 2/2
		e4 e f f | e e f f | e e f f | e e f f |
		c2 b | c1 |
		\time 4/2
		<< 
		   { \voiceOne c\breve }
		   \new Voice { 
			\voiceTwo a\breve 
		   }
		>>
    }
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \theKey \time 2/2 a1 }

	\clef "treble_8"
	\repeat volta 2 {
		a1 | a | c( | c) | d | d2 d | c1 | c |
		c | c2 c | c c | es c | b g | a f |
		\time 4/2
		g\breve |
	}
	\repeat volta 2 {
		\time 2/2
		r2 g | b1 | a | g | 
		r2 g | b g | a b | c c | 
		\omit Slur
		b( a) | d1 | 
% 2
		a | b2( a | g) f | g1 |
		\time 4/2
		f\breve |
	}
	\repeat volta 2 {
		\time 2/2
		r1 | r | r |
		r2 a | 
		\set melismaBusyProperties = #'()
		\slurDashed
		\undo \omit Slur
		c( c) |
		\unset melismaBusyProperties
		\undo \slurDashed
		\omit Slur
		b4( a g b) | a1 | r |
		r2 a | g b | a c |
		b a | g f | 
		\set melismaBusyProperties = #'()
		\slurDashed
		\undo \omit Slur
		g( g) | 
		\time 4/2
		f\breve |
	}
	\repeat volta 2 {
		c'\breve |
		\time 2/2
		c4 c c c | c2 c |
% 3
		\time 4/2
		c4 c c c c2 c | c1 c |
		\time 2/2
		c4 c c c | c2 c | c4 c c c | c2 c |
		a b | g1 |
		\time 4/2
		<< 
		   { \voiceOne a\breve }
		   \new Voice { 
				\voiceTwo f\breve 
		   }
		>>
	}
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \theKey \time 2/2 f1 }

	\clef bass
	\repeat volta 2 {
		f1( | f2) f | f1( | f) | b, | b2 b | c1 | c |
		c | c2 c | f c | g' f | es es4 es | d1 |
		\time 4/2
		c\breve |
	}
	\repeat volta 2 {
		\time 2/2
		r2 c | b1 | f' | c |
		r2 c | b c | f es | f1 | g2 d |
		\omit Slur
		b4( c d e) | f1 | es2( f | c) d | c1 |
		\time 4/2
		f,\breve |
	}
	\repeat volta 2 {
		\time 2/2
		r1 | r | r |
		r2 f' |
		\set melismaBusyProperties = #'()
		\slurDashed
		\undo \omit Slur
		c( c) | 
		\unset melismaBusyProperties
		\undo \slurDashed
		\omit Slur
		g'4( f e g) | f1 | r |
		r2 f | c g' | f1 |
		r2 f | c d | c c |
		\time 4/2
		f,\breve |
	}
	\repeat volta 2 {
		f'\breve |
		\time 2/2
		f4 f f f | f2 f |
% 3
		\time 4/2
		f\breve | c\breve |
		\time 2/2
		c4 c f f | c c f f | c c f f | c c f f |
		f2 d | c1 |
		\time 4/2
		f,\breve |
	}
}
