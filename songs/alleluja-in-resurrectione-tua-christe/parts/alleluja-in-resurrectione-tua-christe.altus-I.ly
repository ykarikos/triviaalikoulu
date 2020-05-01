\version "2.19.49"
\include "suomi.ly"


\include "../alleluja-in-resurrectione-tua-christe.lyrics.ily"

\include "alleluja-in-resurrectione-tua-christe.header.ily"

% First choir

\include "../alleluja-in-resurrectione-tua-christe.alto-one.ily"

\header {
  title = "Alleluja in resurrectione tua Christe (altus I)"
}


\score {
  \new StaffGroup = choirOneStaff <<
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoOneMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyricsChoirOneAlto
     }
    >>
  >>

  \midi {
    \tempo 2 = 90
  }
  \layout {
    \context {
      \Staff
      \consists "Ambitus_engraver"
		
    }
    indent = 4\cm
    incipit-width = 2.5\cm
    \context {
     \Score
     \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
