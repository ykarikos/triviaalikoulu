\version "2.19.49"
\include "suomi.ly"

#(set-global-staff-size 18)

global = { 
%  \numericTimeSignature
  \time 2/2 
%  \autoBeamOff
  \key d \minor
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "Christe tibi vivo"
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

  \incipit { \clef "mensural-c1" \key d \minor \time 2/2 g'2 r4 }


  g2. g4 | g2 g | fis1 | g | b2. b4 | a2 g~ |
  g fis | g g~ | g4 g a2 | r d~ | d4 d d2 | c a |
  b1 | a2 a | g1 | a2 f | e1 | d | r2 b'~ | b4 b b2 |
% 2
  a f | b2. b4 | a2 g~( | g fis) | g d' | d1 | d |
  r2 b | b1 | b1~ | b | r2 b | b b | a g~ | g fis |
  g d' | d1 | d | r2 b | b1 | b~ | b | 
  r2 b | b b | a g~ | g fis |
  \time 4/2 
  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
  g\breve \bar "|."
}

stanzaOneLyrics = \lyricmode {
	Chris -- te ti -- bi vi -- vo,
	Chris -- te ti -- bi vi -- vo mo -- ri -- ar,
	mo -- ri -- ar ti -- bi Chris -- te Re -- demp -- tor,
	Re -- demp -- tor,
	mo -- ri -- ar ti -- bi Chris -- te Re -- demp -- tor,
	tu me -- a, tu mor -- tis,
	spes in a -- go -- ne ma -- nes,
	tu me -- a, tu mor -- tis,
	spes in a -- go -- ne ma -- nes,
}

AltoMusic = \relative c' {
  \set Staff.instrumentName = #"Altus"
  \set Staff.shortInstrumentName = "A"

  \incipit { \clef "mensural-c3" \key d \minor \time 2/2 d'2 r4 }

  d2. d4 | d2 d | d1 | b | f'2. f4 | f2 es |
  d1 | b2 d~ | d4 d d2 | r2 d~ | d4 d d2 | f d |
  d1 | d2 f | d1 | d2 d~ | d cis | d1 | r2 f~ | f4 f f2 |
% 2
  f f | d4( c d e) | f2 es | d1 | d | r2 f | f1 |
  f | r2 d | d1 | d | r2 f | f f | f es | d1 |
  d | r2 f | f1 | f | r2 d | d1 | d | r2 f | f f | f es | d1 |
  \time 4/2 
  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
  d\breve
}

TenoreMusic = \relative c' {
  \set Staff.instrumentName = #"Tenor"
  \set Staff.shortInstrumentName = "T"

  \incipit { \clef "mensural-c4" \key d \minor \time 2/2 g2 r4 }
 
  \clef "treble_8"
  g2. g4 | b2 b | a1 | g | d'2. d4 | c2 b |
  a1 | g2 b~ | b4 b a2 | r b~ | b4 b b2 | a f |
  g1 | a2 a | b1 | a2 a | a1 | a | r2 d~ | d4 d d2 |
% 2
  c a | b1 | c2 b | a1 | g | r2 d' | d1 | 
  d | r2 b | b1 | b | r2 d | d d | c b | a1 
  g | r2 d' | d1 | 
  d | r2 b | b1 | b | r2 d | d d | c b | a1
  \time 4/2 
  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
  g\breve
}

BassMusic = \relative c' {
  \set Staff.instrumentName = #"Bassus"
  \set Staff.shortInstrumentName = "B"

  \incipit { \clef "mensural-f" \key d \minor \time 2/2 g2 r4 }

  \clef bass
  g2. g4 | g2 g | d1 | es | b2. b4 | f'2 g |
  d1 | g,2 g'~ | g4 g d2 | r2 b~ | b4 b b2 | f' f |
  g1 | f2 d | g1 | d2 d | a'1 | d, | r2 b~ | b4 b  b2 |
% 2
  f' f | g1 | f2 g | d1 | g2 b | b1 | b |
  r2 g | g1 | g~ | g | r2 b | b b | f g | d1 |
  g2  b | b1 | b |
  r2 g | g1 | g~ | g | r2 b | b b | f g | d1 |
  \time 4/2 
  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
  g,\breve
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
      \Voice
      \consists "Ambitus_engraver"
		\hide Slur
    }
    indent = 3.5\cm
    incipit-width = 2\cm
    \context {
     \Staff \RemoveEmptyStaves
    }
    \context {
     \Score
     \override VerticalAxisGroup.remove-first = ##t
    }
  }
}