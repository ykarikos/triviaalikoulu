\version "2.19.49"
\include "suomi.ly"


\include "alleluja-in-resurrectione-tua-christe.header.ily"
\include "../alleluja-in-resurrectione-tua-christe.lyrics.ily"

% Second choir

\include "../alleluja-in-resurrectione-tua-christe.soprano-two.ily"
\include "../alleluja-in-resurrectione-tua-christe.alto-two.ily"
\include "../alleluja-in-resurrectione-tua-christe.tenor-two.ily"
\include "../alleluja-in-resurrectione-tua-christe.bass-two.ily"


\header {
  title = "Alleluja in resurrectione tua Christe (coro II)"
}

\score {
  \new StaffGroup = choirTwoStaff <<
    \new Staff <<
      \new Voice = "SopranoTwo" {
		\global
        \SopranoTwoMusic
      }
     \new Lyrics \lyricsto "SopranoTwo" {
       \stanzaOneLyricsChoirOne
     }
    >>
    \new Staff <<
      \new Voice = "AltoTwo" {
        \global
        \AltoTwoMusic
      }
     \new Lyrics \lyricsto "AltoTwo" {
       \stanzaOneLyricsChoirOne
     }
    >>
    \new Staff <<
      \new Voice = "TenoreTwo" {
        \global
        \TenoreTwoMusic
      }
      \new Lyrics \lyricsto "TenoreTwo" {
       \stanzaOneLyricsChoirOne
      }
    >>
    \new Staff <<
      \new Voice = "BassTwo" {
        \global
        \BassTwoMusic
      }
      \new Lyrics \lyricsto "BassTwo" {
       \stanzaOneLyricsChoirOne
      }
    >>
  >>

  \midi {
    \tempo 4 = 160
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
