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

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 g'1 }

    \repeat volta 2 {
        g1 | g | g | f | r2 f | f f | g b( | b) a |
        b1 | b | b2 b | a1 | g | f2 b | a g( | g) fis | g1 |
    }
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata \bar "|."
}

stanzaOneLyricsSoprano = \lyricmode {
	Su -- san -- na se, vi -- dens ra -- pi stup -- ran -- dam
	frau -- de  du -- o -- rum se -- num mi -- quo -- _ rum
    An -- gor val -- de si nam -- que fe -- ce -- ro,
    a -- gent de me -- o cor -- po -- rem tri -- ump -- hum
    me pi -- get -- bit
    sin pror -- sus ab -- ne -- ga -- ve -- ro
    poe -- nas ta -- men se -- ram tur -- pis -- si -- mas
    ve -- rum ma -- lo,
    ut dam -- ner in -- no -- cen -- ter
    quam Do -- mi -- num per ce -- tus of -- fen -- dam.
}

stanzaTwoLyricsSoprano = \lyricmode {
    Tris -- tis fu -- it, sed et pa -- ra -- to cor -- de
    ad fu -- en -- dam cas -- ti -- ta -- tem di -- _ cens.
}

stanzaOneLyrics = \lyricmode {
	Su -- san -- na se, vi -- dens ra -- pi stup -- ran -- dam
	frau -- de  du -- o -- rum se -- num mi -- quo -- rum
    An -- gor val -- de si nam -- que fe -- ce -- ro,
    a -- gent de me -- o cor -- po -- rem tri -- ump -- hum
    me pi -- get -- bit
    sin pror -- sus ab -- ne -- ga -- ve -- ro
    poe -- nas ta -- men se -- ram tur -- pis -- si -- mas
    ve -- rum ma -- lo,
    ut dam -- ner in -- no -- cen -- ter
    quam Do -- mi -- num per ce -- tus of -- fen -- dam.
}

stanzaTwoLyrics = \lyricmode {
    Tris -- tis fu -- it, sed et pa -- ra -- to cor -- de
    ad fu -- en -- dam cas -- ti -- ta -- tem __ di -- cens.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 d'1 }

	r2 d | d1 | g, | a |
%\time 4/2
%\once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%d\breve
}

TenoreMusic = \relative c' {
    \set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 g1 }

	\clef "treble_8"
    \omit Slur
    \repeat volta 2 {
        g1 | b | c | d |
        r2 d | d d | es d | c1 | b | 
        d | d2 d | c1 | b | a2 g | c1( | a2) a | 
        g1 
    }
    \repeat volta 2 {
        r2 b | b1 | c | a2 a | b4( a b c) | d2 d |
        c( b) | a1 | d | d2 d | c c | d f | 
        \undo \omit Slur
        e d( | d) cis | d1 |
        b | c | a | g |
    % 2
        r2 b | b a | b c | d1 | d | c | c2 c | a1 | d | c2 b |
        c1 | a2 a | g1 | 
        r2 g | b1 | c | d |
        r2 d | d d | es d | c1 | b |
        d | d2 d | c1 | b | a2 g | c1 | a |
        \time 4/2
        \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
        g\breve
    }
}

BassMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 g1 }

	\clef bass
	g1 | g | es | d |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}
