TenoreOneMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor I"
	\set Staff.shortInstrumentName = "T I"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 r2 d'1 }

	\clef "treble_8"
	r2 d1 d2 | g,4 a b c d2. c4 | b2 g1 c2 | r2 f,2. g4 a2 |
	a2 d2. c8 b c2( | c) g4 a b2 g( | g4) a b2 c1 | g4 a b g a1( |
	a) a2 r4 a | a g a g g fis g2 | r1 r2 r4 b | a g a2 r2 r4 a |
% p2
	g b c d c a g2 | r2 r4 g a2. d4 | h2. h4 a2 a4 a |
	a a d,2 e1 | r4 a d4. c8 b4 b es4. d8 | c2 r4 b2 g4 fis2 |
	g1 r | R\breve | R\breve |
% p3
	R\breve | r4 g2 a4 a2 a | r1 r2 a |
	\time 3/1
	\repeat volta 2 {
		b\breve b1 | b1. b2 b1 | a\breve f1 | a\breve a1 | b1. b2 b1 |
		a g g | g fis\breve | g\breve r1 |
		\repeat unfold 7 { R\breve. } |
% p4
		r\breve b1 | d\breve d1 | b1. b2 b1 | c\breve a1 | c\breve f,1 |
		b1. b2 g1 | a g g | b d\breve | h\breve r1 | R\breve. |
		b1 b g | a\breve r1 | a a a | c\breve r1 | r\breve c1 |
		b d2 c4 b a1 |
	}
	\alternative {
		{
			g\breve a1 |
		}
		{
			g\breve r1 |
		}
	}
	c c d | es\breve r1 |
% p5
	g,\breve g1 | g\breve. | g\breve. \bar "|."
}

stanzaOneLyricsChoirOneTenor = \lyricmode {
    Rep -- le -- a -- _ tur _ os me -- _ _ um,
    lau -- _ _ de tu -- _ _ a,
    lau -- _ de tu -- _ _ a,
		lau -- _ de _ tu -- a.
    Al -- le -- lu -- ja, al -- le -- lu -- ja
    Al -- le -- lu -- ja
    Al -- le -- lu -- ja,
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
    al -- le -- lu -- _ _ _ ja. Gau --
    ja.
    Al -- le -- lu -- ja
    Al -- le -- lu -- ja.
}
