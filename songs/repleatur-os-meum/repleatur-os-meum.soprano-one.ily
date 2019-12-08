SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 d''1 }

	d1 d2 g,4 a | b c d2. c4 b2 | g d' c c | f,2. g4 a2 a |
	d1. c2 | r1 g2. a4 | b2 g1 es'2( | es) d2. c8 b a2 |
	a1 a2 r4 d4 | c c d b c a g2 | r1 r2 r4 d' | c b a2 r2 r4 d |
% p2
  c b a b g fis g2 | r2 r4 b a2. a4 | h2. g4 a2 a4 a |
	a f g2 a4 e a4. g8 | f4 f b4. a8 g4 g c4. b8 | a2 d2. c4 a2 |
	h1 r1 | R\breve | R\breve | R\breve |
% p3
	r4 h2 d4 cis2 d | r1 r2 d2 |
	\time 3/1
	\repeat volta 2 {
		d\breve d1 | d1. d2 d1 | c\breve a1 | c\breve d1 | b1. b2 g1 | a b c |
		g a\breve | h\breve r1 | \repeat unfold 7 { R\breve. }
% p4
		r\breve d1 | d\breve d1 | d1. d2 d1 | c\breve c1 | c\breve d1 |
		b1. b2 b1 | a b c | d d\breve | d\breve r1 | R\breve. | g,1 g g | fis\breve r1 |
		e1 e f | e\breve r1 | r\breve c'1 | d1 d\breve |
	}
	\alternative {
		{
			h\breve d1 |
		}
		{
			h\breve r1 |
		}
	}
	es es d | c\breve r1 |
% p5
	es es d | c\breve. | h\breve. \bar "|."
}

stanzaOneLyricsChoirOneSoprano = \lyricmode {
    Rep -- le -- a -- tur os me -- um,
    rep -- le -- a -- tur lau -- de tu -- a,
    lau -- de tu -- a, lau -- de tu -- a,
    lau -- _ _ _ de tu -- a.
    Al -- le -- lu -- ja, al -- le -- lu -- ja
    Al -- le -- lu -- ja
    Al -- le -- lu -- ja, al -- le -- lu -- ja,
    Al -- le -- lu -- ja.
    Ut pos -- sim can -- ta -- re ti -- bi
    al -- le -- lu -- ja, al -- le -- lu -- ja,
    al -- le -- lu -- ja, al -- le -- lu -- ja.
    Al -- le -- lu -- ja.

    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja
    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja.
    Al -- le -- lu -- ja
    al -- le -- lu -- ja,
    al -- le -- lu -- ja. Gau --
    ja.
    Al -- le -- lu -- ja
    Al -- le -- _ lu -- ja.
}
