\version "2.19.80"
\include "suomi.ly"

global = { 
%  \numericTimeSignature
  \time 2/2 
%  \autoBeamOff
  \key d \minor
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "The Song Title"
%  subtitle = ""
  composer = "Tuntematon"
  mutopiacomposer = "Anonymous"
%  instrument = "Voice (SATB)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
  tagline = "The source is available at https://github.com/ykarikos/triviaalikoulu"
}

\paper {
    #(define fonts
        (make-pango-font-tree "Palatino"
                              "Nimbus Sans"
                              "Luxi Mono"
                              (/ staff-height pt 20)))
}

% First choir

SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { 
		\clef "mensural-c1" \key d \minor \time 2/2 g'1
	}

	g1 |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata \bar "|."
}

stanzaOneLyricsChoirOne = \lyricmode {
	Chris -- te
}

AltoOneMusic = \relative c' {
	\set Staff.instrumentName = #"Altus I"
	\set Staff.shortInstrumentName = "A I"

	\incipit { 
		\clef "mensural-c3" \key d \minor \time 2/2 d'1
	}

	d1 |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
}

TenoreOneMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor I"
	\set Staff.shortInstrumentName = "T I"

	\incipit { 
		\clef "mensural-c4" \key d \minor \time 2/2 b1
	}

	\clef "treble_8"
	b1 |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

BassOneMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus I"
	\set Staff.shortInstrumentName = "B I"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 g1 }

	\clef bass
	g1 | 
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}

% Second choir

SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 g'1 }

	r1 | g1 |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata \bar "|."
}

stanzaOneLyricsChoirTwo = \lyricmode {
	Chris -- te
}

AltoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus II"
	\set Staff.shortInstrumentName = "A II"

	\incipit {
		\clef "mensural-c3" \key d \minor \time 2/2 d'1
	}

	r1 | d1 |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
}

TenoreTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor II"
	\set Staff.shortInstrumentName = "T II"

	\incipit { 
		\clef "mensural-c4" \key d \minor \time 2/2 b1
	}

	\clef "treble_8"
	r1 | b1 |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

BassTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus II"
	\set Staff.shortInstrumentName = "B II"

	\incipit {
		\clef "mensural-f" \key d \minor \time 2/2 g1
	}

	\clef bass
	r1 | g1 | 
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}


\score {
<<
  \new StaffGroup = choirOneStaff <<
    \new Staff <<
      \new Voice = "Soprano" {
		\global
        \SopranoOneMusic
      }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyricsChoirOne
     }
    >>
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoOneMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyricsChoirOne
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreOneMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsChoirOne
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassOneMusic
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaOneLyricsChoirOne
      }
    >>
  >>

  \new StaffGroup = choirTwoStaff <<
    \new Staff <<
      \new Voice = "SopranoTwo" {
		\global
        \SopranoTwoMusic
      }
     \new Lyrics \lyricsto "SopranoTwo" {
       \stanzaOneLyricsChoirTwo
     }
    >>
    \new Staff <<
      \new Voice = "AltoTwo" {
        \global
        \AltoTwoMusic
      }
     \new Lyrics \lyricsto "AltoTwo" {
       \stanzaOneLyricsChoirTwo
     }
    >>
    \new Staff <<
      \new Voice = "TenoreTwo" {
        \global
        \TenoreTwoMusic
      }
      \new Lyrics \lyricsto "TenoreTwo" {
       \stanzaOneLyricsChoirTwo
      }
    >>
    \new Staff <<
      \new Voice = "BassTwo" {
        \global
        \BassTwoMusic
      }
      \new Lyrics \lyricsto "BassTwo" {
       \stanzaOneLyricsChoirTwo
      }
    >>
  >>
>>

  \midi { 
    \tempo 4 = 160
  }
  \layout {
    \context {
      \Voice
      \consists "Ambitus_engraver"
		\hide Slur
    }
    indent = 4\cm
    incipit-width = 2.5\cm
    \context {
     \Score
     \override VerticalAxisGroup.remove-first = ##t
    }
  }
}