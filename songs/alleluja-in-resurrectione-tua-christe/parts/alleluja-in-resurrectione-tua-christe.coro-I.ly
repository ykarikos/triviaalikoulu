\version "2.19.49"
\include "suomi.ly"

\include "alleluja-in-resurrectione-tua-christe.header.ily"
\include "../alleluja-in-resurrectione-tua-christe.lyrics.ily"

% First choir

\include "../alleluja-in-resurrectione-tua-christe.soprano-one.ily"
\include "../alleluja-in-resurrectione-tua-christe.alto-one.ily"
\include "../alleluja-in-resurrectione-tua-christe.tenor-one.ily"
\include "../alleluja-in-resurrectione-tua-christe.bass-one.ily"

\header {
  title = "Alleluja in resurrectione tua Christe (coro I)"
}


\score {
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
       \stanzaOneLyricsChoirOneAlto
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreOneMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsChoirOneAlto
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassOneMusic
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaOneLyricsChoirOneBass
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
