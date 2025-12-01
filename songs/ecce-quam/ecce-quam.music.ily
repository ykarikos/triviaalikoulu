#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key d \minor
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit {
        \clef "mensural-g"
        \set Staff.middleCClefPosition = #3
        \set Staff.middleCPosition = #3
        \set Staff.clefPosition = #0
        \key d \minor \time 2/2 g2
    }

    \repeat volta 2 {
        g2 g4 a | b2 b4 b | b b b b | a2 a | a a4 a | g2 g4 g |
        fis g g fis |
    }
    \alternative {
        {
            g1 |
        }
        {
            g2 r4 g |
        }
    }
    \repeat volta 2 {
        es g g fis | g g g g | es g g fis |
    }
    \alternative {
        {
            g2 r4 g |
        }
        {
            g1 |
        }
    }
% 2
    \repeat volta 2 {
        b2 a4 g | a2 d | d cis | d1 | b2 b4 b | c2 c4 b | a g g fis |
    }
    \alternative {
        {
            g1 |
        }
        {
            g2 r4 g |
        }
    }
    es g g fis | g g g g | es g g fis | g2 r4 g |
    es g g fis | g g g g | es g g fis | g2 r4 b |
% 3
    a2 g | g fis | g r4 b | a g g fis | g1 |
    g2 g( | g) g |
    \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
    \time 4/2 g\breve \bar "|."
}

stanzaOneLyrics = \lyricmode {
    Ec -- ce quam sit ti -- bi dul -- ce ru -- bens os,
    quam sint ti -- bi can -- di -- da lu -- mi -- na tu -- a. a.
    Ca -- pil -- lus ti -- bi fla -- vus est
    ti -- bi mol -- li -- cu -- la. Ca -- la.
    O me -- a lux et cor -- cu -- lum
    fac me so -- lum ti -- bi fi -- e -- ri spon -- sum. sum.
    Vox tu -- a dul -- cis la -- bi -- a
    tu -- a sunt mol -- li -- a,
    vox tu -- a dul -- cis la -- bi -- a
    tu -- a sunt mol -- li -- a,
    Ve -- ni in hor -- tu -- lum,
    ve -- ni in hor -- tu -- lum.
    Lus -- ci -- ni -- a.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 d'2 }

  \repeat volta 2 {
    d2 d4 f | f2 f4 f | f f f f | f2 f | f f4 f | d2 es4 es |
    d d d d |
  }
  \alternative {
    {
      d1 |
    }
    {
      d2 r4 d4 |
    }
  }
  \repeat volta 2 {
    es es d d | d d d d | es es d d |
  }
  \alternative {
    {
      d2 r4 d |
    }
    {
      d1 |
    }
  }
% 2
  \repeat volta 2 {
    d2 f4 g | f2 a | a a | fis1 |
    g2 g4 g | g2 g4 f | f d d d |
  }
  \alternative {
    {
      d1 |
    }
    {
      d2 r4 d |
    }
  }
  es es d d | d d d d | es es d d | d2 r4 d |
  es es d d | d d d d | es es d d | d2 r4 f |
  f2 d | d d | d r4 f4 | f d d d | d1 |
  es2 es( | \once\omit Accidental es) es! |
  \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
  \time 4/2 d\breve \bar "|."
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 b2 }

	\clef "treble_8"
    \repeat volta 2 {
        b2 b4 c | d2 d4 d | d d d d | c2 c | c c4 c |
        b2 c4 c | a g a a |
    }
    \alternative {
        {
            g1 |
        }
        {
            g2 r4 b |
        }
    }
    \repeat volta 2 {
        c c a a | g b b b | c c a a |
    }
    \alternative {
        {
            g2 r4 b |
        }
        {
            g1 |
        }
    }
% 2
    \repeat volta 2 {
        d'2 d4 d | d2 f | e e | d1 |
        d2 d4 d | e2 e4 d | d g, a a |
    }
    \alternative {
        {
            g1 |
        }
        {
            g2 r4 b |
        }
    }
    c c a a | g b b b | c c a a | g2 r4 b |
    c c a a | g a b b | c c a a | g2 d' |
    c g | a a | g r4 d' | c g a a | b1 |
    c2 c( | c) c |
    \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
    \time 4/2 h\breve \bar "|."
}

BassMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 g2 }

	\clef bass
    \repeat volta 2 {
	    g2 g4 f | b,2 b4 b | b b b b | f'2 f | f f4 f |
        g2 c,4 c | d d d d |
    }
    \alternative {
        {
            g,1 |
        }
        {
            g2 r4 g' |
        }
    }
    \repeat volta 2 {
        c, c d d | g g g g | c, c d d |
    }
    \alternative {
        {
            g2 r4 g |
        }
        {
            g1 |
        }
    }
    \repeat volta 2 {
        g2 f4 e | d2 d | a' a | d,1 |
        g2 g4 g | c,2 c4 d | f g d d |
    }
    \alternative {
        {
            g,1 |
        }
        {
            g2 r4 g'4 |
        }
    }
    c, c d d | g g g g | c, c d d | g,2 r4 g' |
    c, c d d | g g g g | c, c d d | g,2 r4 b |
    f'2 g | d d | g, r4 b | f' g d d | g,1 |
    c2 c( | c) c |
    \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
    \time 4/2 g\breve \bar "|."
}
