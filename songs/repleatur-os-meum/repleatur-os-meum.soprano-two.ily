SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit {
		\clef "mensural-c1" \key d \minor \time 2/2
		r1 d''1
	}

	r1 d1 | d2 g,4 a b c d2( | d4) c b2 g a | b a f2. g4 |
	a2 b b a4 g8 f | g2 g2. a4 b2 | g1 es'2. d4 | c2 b a d( |
	d4)cis8 h cis2 d1 | r1 r2 r4 d | c c d b c a g2 | r2 r4 d' c b a2 |
% p2
	r1 r2 r4 g | g fis g d' d2. d4 | d1 r |
	\repeat unfold 3 { R\breve } |
	r2 g, a a4 a | a f g2 a4 e a4. g8 | f4 f b4. a8 g4 g  c4. b8 |
% p3
	a2 d2. c4 a2 | h r1 r4 d( | d) d cis2 d1 |
	\time 3/1
	\repeat volta 2 {
		\repeat unfold 7 { R\breve. } |
		r\breve d1 | d\breve d1 | d1. d2 d1 | c\breve a1 | c\breve d1 |
		b1. b2 g1 |
% p4
		a b c | g a\breve | h\breve d1 | b\breve b1 | b1. b2 b1 |
		a\breve a1 | a\breve b1 |
		d1. d2 d1 | d d c | b a\breve | h\breve h1 | c d\breve | d\breve r1 |
		a a g | a\breve r1 | g g a | b1. a2 g1 | b a d |
	}
	\alternative {
		{
			d\breve r1 |
		}
		{
			d\breve r1 |
		}
	}
	R\breve. |
% p5
	es1 es d | c c d | es\breve. | d\breve. \bar "|."
}


stanzaOneLyricsChoirTwoSoprano = \lyricmode {
    Rep -- le -- a -- _ _ _ _ _ _ tur os me -- um,
		lau -- _ _ de tu -- _ _ _ a,
		lau -- _ _ de, lau -- _ _ _ de tu -- _ _ _ a.

    Al -- le -- lu -- ja, al -- le -- lu -- ja
    Al -- le -- lu -- ja
    Al -- le -- lu -- ja, al -- le -- lu -- ja.
    Ut pos -- sim can -- ta -- re ti -- bi
    al -- le -- lu -- ja, al -- le -- lu -- ja,
    al -- le -- lu -- ja, al -- le -- lu -- ja.
    Al -- le -- lu -- ja.

    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja.
    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja.
    Al -- le -- lu -- ja,
    al -- le -- lu -- ja,
    Al -- le -- lu -- ja, __ _ _
		al -- le -- lu -- ja.
    ja.
    Al -- le -- lu -- ja,
    al -- le -- lu -- ja.
}
