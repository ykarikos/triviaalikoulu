\version "2.19.49"
\include "suomi.ly"

global = { 
%  \numericTimeSignature
  \time 4/2 
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "Christus adest justus"
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


SopranoMusic = \relative c' {
  \set Staff.instrumentName = #"Cantus"
  \set Staff.shortInstrumentName = "C"

	f\breve | f1( g) | a a | b\breve | a \breve\fermata
	a1 g2 a~( | a4 g f1 e2) | f\breve\fermata |
	a1 a2 a | b\breve | a\breve\fermata | f2 f f g |
	a1 a | a2 a b1 | a1 r2 a | a a a f | a g f1 | 
% 2
	g2 g f a~( | a g4 f g f e d) | c2 f1( e2) | f\breve\fermata	f2 f g1 | a r2 a | a g a1 | r2 a a g | a1 r2 a |
	b b a1 | g2 a2.( g4) f2~ | 

	\time 2/2 
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	f e | 
	\time 4/2 
	\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	f\breve | a\breve | a2 g4 g f2 g |
% 3
	a2 g4 g f2 g | a2 g4 g f2 g | a1 a | g2 a b1 | a2 a a g |
	a1 g2 f | c( f1) e2 | f\breve |
	a2. a4 a2 a | a2. a4 a2 a | a2. a4 a2 a | b1 a | a2 g1( f2) | g\breve\fermata
	c1 b | a g2 c~ | c b c a | b a1( g4 f) | e2 f f e |
	f\breve \bar "|."
}

stanzaOneLyrics = \lyricmode {
	Chris -- tus a -- dest jus -- tus et ser -- va -- tor.
	Rex que be -- nig -- nus, 
	Chris -- tus a -- dest jus -- tus et ser -- va -- tor.
	Chris -- tus a -- dest jus -- tus et ser -- va -- tor.
	Rex que be -- nig -- nus, 
	Plau -- de Zi -- on, lau -- da Zi -- on,
	gau -- de Zi -- on, 
	mi -- tis Rex  ve -- nit ec -- ce tu -- us.
	Qui na -- tus est no -- bis
	da -- tus est no -- bis fac -- tus est ho -- mo
	Ex Ma -- ri -- a Vir -- gi -- ne de men -- te 
	Pat -- ris ge -- ni -- tus.
	Gau -- de -- a -- mus,
	e -- xul -- te -- mus,
	ju -- bi -- le -- mus
	om -- nes i -- ta -- que.
	Ve -- ra sa -- lus ho -- mi -- num
	Chris -- tus in mun -- do na -- tus est.
}

AltoMusic = \relative c' {
  \set Staff.instrumentName = #"Altus"
  \set Staff.shortInstrumentName = "A"
  c\breve |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
}

TenoreMusic = \relative c {
  \set Staff.instrumentName = #"Tenor"
  \set Staff.shortInstrumentName = "T"
  \clef "treble_8"
  f\breve |
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

BassMusic = \relative c {
  \set Staff.instrumentName = #"Bassus"
  \set Staff.shortInstrumentName = "B"
  \clef bass
  f\breve | 
%  \time 4/2 
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
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
    \tempo 1 = 160
  }
  \layout {
    indent = 1.0\cm
    \context {
     \Staff \RemoveEmptyStaves
   }
    \context {
     \Score
     \override VerticalAxisGroup.remove-first = ##t
    }
  }
}