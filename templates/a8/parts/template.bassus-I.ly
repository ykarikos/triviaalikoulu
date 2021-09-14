\version "2.20.0"
\include "suomi.ly"


\include "../template.global.ily"
\include "../template.lyrics.ily"

% First choir

\include "../template.bass-one.ily"


\include "template.header.ily"

\header {
  title = "The Song Title (bassus I)"
}


\score {
  \new StaffGroup = choirOneStaff <<
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

  \midi {
    \globaltempo
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
