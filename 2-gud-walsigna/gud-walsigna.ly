\version "2.19.49"
\include "suomi.ly"

% #(set-global-staff-size 18)

global = { 
%  \numericTimeSignature
  \time 2/2 
%  \autoBeamOff
  \key d \minor
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "Gud wälsigna thetta huus"
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


SopranoMusic = \relative c'' {
  \set Staff.instrumentName = #"Cantus"
  \set Staff.shortInstrumentName = "C"
  g2 g | fis fis | g g | a a | b b | a g | fis fis |
  g1\fermata | g2 fis4 fis | g2 g4 g | b2 c4 c | fis,2 g | fis4 fis a2 | fis1 |
  g\fermata | g2 fis | g1 | a | b4 b b b | a a a a | fis2 g |
% 2
  fis g | a a | a1\fermata |
  fis2 fis | b b | a a | b a |
  b a | g fis4 fis | g1\fermata |
  g2 fis | g1 a | b4 b b b | 
  d d b a | b2 c | a1 | g1\fermata |
  b2 b4 b | a2 a | g g4 g |
% 3
  a2 a | b a | g g( | g) fis2 |
 %\once \override Score.BarLine.break-visibility = ##(#f #t #t)
%  \once \override Staff.TimeSignature.break-visibility = ##(#f #f #f) 
  g1\fermata \bar "|."
}

stanzaOneLyrics = \lyricmode {
	Gud wäl -- sig -- na, Gud wäl -- sig -- na, 
	Gud wäl -- sig -- na, thet -- ta huus
	och al -- la, och al -- la, och al -- la the som
	här ä -- ro in -- ne,
	Gud gif -- wa oss
	lyc -- ka och frijd, lyc -- ka och frijd,
	lyc -- ka, frijd, och sa -- lig -- heet,
	att wij wå -- ga, att wij wå -- ga,
	äls -- ka oss in -- bör -- de
	af alt hjär -- ta af alt hjär -- ta
	af alt hjär -- ta och o -- för -- skyllt
	så som oss Je -- sus, så som oss Je -- sus, 
	Chris -- tus äls -- kat haf -- wer.
}

AltoMusic = \relative c' {
  \set Staff.instrumentName = #"Altus"
  \set Staff.shortInstrumentName = "A"
  d2
}

TenoreMusic = \relative c' {
  \set Staff.instrumentName = #"Tenor"
  \set Staff.shortInstrumentName = "T"
  \clef "treble_8"
  b2
}

BassMusic = \relative c {
  \set Staff.instrumentName = #"Bassus"
  \set Staff.shortInstrumentName = "B"
  \clef bass
  g2
}



\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Soprano" {
		\global
        \SopranoMusic
      }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyrics
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassMusic
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaOneLyrics
      }
    >>
  >>
  \midi { 
    \tempo 4 = 160
  }
  \layout {
    \context {
     \Staff \RemoveEmptyStaves
   }
    \context {
     \Score
     \override VerticalAxisGroup.remove-first = ##t
    }
  }
}