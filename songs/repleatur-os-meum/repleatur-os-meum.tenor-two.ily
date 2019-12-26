TenoreTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor II"
	\set Staff.shortInstrumentName = "T II"

	\incipit {
		\clef "mensural-c4" \key d \minor \time 2/2
		r1 r2 d'2
	}

	\clef "treble_8"
	r1 r2 d2( | d) d g,4 a b c | d2 d4 b c2 c | d4 c8 b c4 b a2. g4 |
	f1. f2 | g\breve | g1 r | r r2 a( | a4) g8 f e4 a fis1 |
	r1 r2 r4 b | a g a g g fis g2 | r2 r4 a g b c2 |
% p2
	r1 r2 r4 h | c a g d fis4. g8 a4 a | g1 r |
	R\breve | R\breve | R\breve |
	r2 h a a4 a | a a d,2 e1 | r4 a d4. c8 b4 b es4. d8 |
% p3
	c2 r4 b2 g4 fis2 | g2 r r r4 a( | a) b a2 a1 |
	\time 3/1
	\repeat volta 2 {
		\repeat unfold 7 { R\breve. } |
		r\breve a1 | b\breve b1 | b1. b2 b1 | a\breve f1 | a\breve a1 | b1. b2 b1 |
% p4
		a1 g g | g fis\breve | g\breve
		f1 | f\breve f1 | f1. f2 f1 | a\breve f1 | a\breve d1 |
		d1. d2 d1 | d b g | g a\breve | g\breve g1 | g a\breve | g\breve r1 |
		a1 a d, | d\breve r1 | c' c c | d\breve g,1 | g a\breve |
	}
	\alternative {
		{
			h\breve r1 |
		}
		{
			h\breve r1 |
		}
	}
	R\breve. | c1 c d |
% p5
	es c h | c2 b4 a g2 f g a | h\breve. \bar "|."
}

stanzaOneLyricsChoirTwoTenore = \lyricmode {
    Rep -- le -- a -- _ _ _ _ tur os me -- um,
		lau -- _ _ _ _ _ _ _ de tu -- a,
		tu -- _ _ _ _ a.
    Al -- le -- lu -- ja, al -- le -- lu -- ja
    Al -- le -- lu -- ja
    Al -- le -- lu -- ja, al -- le -- _ _ lu -- ja.
    Ut pos -- sim can -- ta -- re ti -- bi
    al -- le -- lu -- ja, al -- le -- lu -- ja,
    al -- le -- lu -- ja.
    Al -- le -- lu -- ja.

    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja.
    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja.
    Al -- le -- lu -- ja,
    al -- le -- lu -- ja,
    Al -- le -- lu -- ja
		al -- le -- lu -- ja.
    ja.
    Al -- le -- lu -- ja
    Al -- le -- lu -- _ _ _ _ _ _ ja.
}
