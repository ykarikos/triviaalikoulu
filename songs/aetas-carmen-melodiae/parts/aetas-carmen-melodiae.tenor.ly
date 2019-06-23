\version "2.19.49"
\include "suomi.ly"

\include "../aetas-carmen-melodiae.music.ily"

\header {
  title = "Ætas carmen melodiæ (tenor)"
  subtitle = "Porin triviaalikoulun nuottikirja (1725)"
  composer = "Daniel Friderici (1548–1638)"
  poet = "suom. sanat Hemminki Maskulainen (n. 1550–1619)"
%  instrument = "Voice (SATB)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "Nuotit on lisensoitu Creative Commons Nimeä-JaaSamoin 3.0 (CC BY-SA 3.0) -ehdoin."
  tagline = "Lähdekoodit löytyvät osoitteesta https://github.com/ykarikos/triviaalikoulu"
}

\paper {
	system-system-spacing.basic-distance = #16
    #(define fonts
        (make-pango-font-tree "Palatino"
                              "Nimbus Sans"
                              "Luxi Mono"
                              (/ staff-height pt 20)))
}



\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Tenore" {
		\global
        \TenoreMusic
      }
     \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsTenor
     }
     \new Lyrics \lyricsto "Tenore" {
       \stanzaTwoLyricsTenor
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
%		\hide Slur
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
