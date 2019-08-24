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
        g1 | g | g | f | r2 f | f f | g b( | b) a \noBreak |
        b1 | b | b2 b | a1 | g | f2 b | a g( | g) fis | g1 |
    }
    \repeat volta 2 {
        r2 g | g1 | g | f2 f |
        \omit Slur
        g4( f g a) | b2 b | a( g) | f1 |
        a | a2 b | a c | b a | a g | a1 \noBreak | a | b |
        \undo \omit Slur
        a2 g( | g) fis | g1 |

% 2
        r2 g | g f | g a | b1 | b | a | g2 g | f1 | b | a2 g |
        a g( | g) fis | g1 |
        r2 g | g1 | g | f |
        r2 f | f f | g b( | b) a | b1 | b | b2 b | a1 | g |
        f2 b | a g( | g) fis |
        \time 4/2
        \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
        g\breve |
    }
}

stanzaOneLyricsSoprano = \lyricmode {
	Su -- san -- na se, vi -- dens ra -- pi stup -- ran -- dam
	frau -- de  du -- o -- rum se -- num mi -- quo -- _ rum
    An -- gor val -- de si nam -- que fe -- ce -- ro,
    a -- gent de me -- o cor -- po -- rem tri -- ump -- hum
    me pi -- ge -- _ bit
    sin pror -- sus ab -- ne -- ga -- ve -- ro
    poe -- nas ta -- men se -- ram tur -- pis -- si -- mas
    ve -- rum ma -- lo,
    ut dam -- ner in -- no -- cen -- ter
    quam Do -- mi -- num per ce -- tus of -- fen -- _ dam.
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
    me pi -- ge -- bit
    sin pror -- sus ab -- ne -- ga -- ve -- ro
    poe -- nas ta -- men se -- ram tur -- pis -- si -- mas
    ve -- rum ma -- lo,
    ut dam -- ner in -- no -- cen -- ter
    quam Do -- mi -- num per ce -- tus of -- fen -- dam.
}

stanzaTwoLyricsTenore = \lyricmode {
    Tris -- tis fu -- it, sed et pa -- ra -- to cor -- de
    ad fu -- en -- dam cas -- ti -- ta -- tem __ di -- cens.
}

stanzaTwoLyrics = \lyricmode {
    Tris -- tis fu -- it, sed et pa -- ra -- to cor -- de
    ad fu -- en -- dam cas -- ti -- ta -- tem di -- cens.
}


AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 r2 d' }

    \repeat volta 2 {
    	r2 d | d1 | g, | a | r2 a | a f | c' f | f1 | d |
        f | f2 f | f1 | d | d2 b | es1 | d | d |
    }
    \repeat volta 2 {
        r2 d | d1 | e | d2 d | d1 | g2 f |
        \omit Slur
        f( d) | d1 | f | a2 g | e f | g f | d d |
        e1 | f | d | es | d | d |
% 2
        r2 d | d d | d f | f1 | f | f | e2 e | d1 | f | f2 d |
        es1 | d2 d | h1 |
        r2 d | d1 | g, | a |
        r2 a | a f | c' f | f1 |
        d | f | f2 f | f1 | d | d2 b | es1 | d1
        \time 4/2
        \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
        d\breve |
    }
}

TenoreMusic = \relative c' {
    \set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 g1 }

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
    \repeat volta 2 {
        g1 | g | es | d | r2 d | d d | c b | f'1 | b, | b |
        b2 b | f'1 | g |
        d2 es | c1 | d | g, |
    }
    \repeat volta 2 {
        r2 g' | g1 | c, | d2 d | g1( | g2) b |
        f g | d1 | d | f2 g | a a | g d | a' b |
        a1 | d, | g | c, | d | g, |
% 2
        r2 g' | g d | g f | b,1 | b | f' |
        c2 c | d1 | b | f2 g |
        c1 | d2 d | g,1 |
        r2 g' | g1 | e! | d |
        r2 d | d d | c b | f'1 |
        b, | b | b2 b | f'1 | g | d2 es |
        c1 | d |
        \time 4/2
        \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
        g,\breve |
    }
}
