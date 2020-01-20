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

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 g'2. }

  \repeat volta 2 {
  	g2. g4 | fis2 g4 a( | a) g fis2 | r4 f! g a | b2 a4 g( | g) fis g b |
    a g g fis | g8 a b c d4 b | a g g fis | g1 |
  }
  \repeat volta 2 {
    fis4. fis8 fis4 fis | g g fis2 | f!4. g8 a4 b | b a b2 |
    c4. c8 c4 d | h c d2 | b4. b8 a4 g | g fis g4. f16 e |
    d2 d4 d | e g g fis | g1 |
  }
}

stanzaOneLyrics = \lyricmode {
  \set stanza = #"1. "
	Ce -- dit hy -- ems e -- mi -- nus,
  Sur -- re -- xit Chris -- tus Do -- mi -- nus,
  Tu -- lit -- que gau -- di -- a, __ _ _ _ _
  tu -- lit -- que gau -- di -- a.
  Val -- lis nos -- tra flo -- ru -- it,
  Re -- vi -- vis -- cunt a -- ri -- da,
  Post -- quam ver in -- te -- pu -- it,
  Re -- ca -- les -- cunt fri -- gi -- da, __ _ _ _
  re -- ca -- les -- cunt fri -- gi -- da.
}

stanzaTwoLyrics = \lyricmode {
  \set stanza = #"2. "
  Pas -- tor qui pro o -- vi -- bus
  Du -- cen -- dis ab er -- ro -- ri -- bus,
  Po -- ne -- bat a -- ni -- mam, __ _ _ _ _
  po -- ne -- bat a -- ni -- mam.
  Li -- bens fer -- re vo -- lu -- it,
  Cru -- cis poe -- nam ma -- xi -- mam.
  Sol -- vit quae non ra -- pu -- it,
  Per mor -- tem tur -- pis -- si -- mam, __ _ _ _
  per mor -- tem tur -- pis -- si -- mam.
}

stanzaThreeLyrics = \lyricmode {
  \set stanza = #"3. "
  Vi -- dit et con -- do -- lu -- it,
  Quod o -- vis u -- na de -- fu -- it,
  Er -- rans per de -- vi -- um, __ _ _ _ _
  er -- rans per de -- vi -- um.
  In de -- ser -- to de -- se -- rit,
  Mag -- num gre -- gem o -- vi -- um,
  A -- bit, quae -- rit, re -- pe -- rit,
  Er -- ran -- tem per de -- vi -- um, __ _ _ _
  er -- ran -- tem per de -- vi -- um.
}

stanzaFourLyrics = \lyricmode {
  \set stanza = #"4. "
  Mag -- na mi -- se -- ra -- ti -- o,
  Quam re -- du -- xit de De -- vi -- o,
  Im -- po -- nit hu -- me -- rum, __ _ _ _ _
  im -- po -- nit hu -- me -- rum.
  Non est do -- lor si -- mi -- lis,
  Do -- lo -- ri, quem pa -- te -- ris,
  Je -- su, qui sic hu -- mi -- lis.
  Fac -- tus es prae ce -- te -- ris,  __ _ _ _
  fac -- tus es prae ce -- te -- ris.
}

stanzaFiveLyrics = \lyricmode {
  \set stanza = #"5. "
  Mor -- tis ne -- xu di -- ru -- to,
  Dra -- co -- ne sur -- gens ob -- ru -- to,
  Dep -- rae -- dans in -- fe -- ros, __ _ _ _ _
  dep -- rae -- dans in -- fe -- ros.
  Pha -- ra -- o -- nis im -- pi -- o,
  Cap -- ri -- vos et mi -- se -- ros,
  Du -- cens ab im -- pe -- ri -- o,
  Cho -- ros us -- que su -- pe -- ros, __ _ _ _
  cho -- ros us -- que su -- pe -- ros.
}

stanzaOneLyricsFin = \lyricmode {
  \set stanza = #"1. "
  Tui -- man tal -- ven tau -- co -- mast
  Cans He -- ran cuol -- luist nou -- se -- mast
  I -- loo cax il -- mes -- tyi, __ _ _ _ _
  i -- loo cax il -- mes -- tyi:
  Sitt cuin ke -- vä pen -- seis -- tyi
  Kyl -- met -- ty -- ned läm -- byi -- sit
  Ked -- hod cans caick cu -- cois -- tuit
  Cui -- vet -- tu -- ned vir -- coi -- sit, __ _ _ _
  cui -- vet -- tu -- ned vir -- coi -- sit.
}

stanzaTwoLyricsFin = \lyricmode {
  \set stanza = #"2. "
  Lam -- bai -- tans lu -- nas -- ta -- xens
  Ki -- dhast cauh -- jan ca -- dho -- tu -- xen
  Pai -- men pa -- ni hen -- gens, __ _ _ _ _
  pai -- men pa -- ni hen -- gens.
  Jo -- ta ei hän ryö -- vä -- nyt
  Mie -- le -- läns on ma -- xa -- nut
  Caut -- ta cat -- ke -- ran sur -- man
  Cauh -- jan ris -- tin cuo -- le -- man, __ _ _ _
  Cauh -- jan ris -- tin cuo -- le -- man.
}

stanzaThreeLyricsFin = \lyricmode {
  \set stanza = #"3. "
  Pai -- men täs suu -- rest su -- ri
  Ett lam -- baist y -- xi pois o -- li
  E -- xyn er -- he -- ty -- xin, __ _ _ _ _
  e -- xyn er -- he -- ty -- xin.
  Jät -- täp lau -- man cor -- pe -- hen
  Me -- nep yh -- tä ed -- zi -- män
  E -- xy -- mäst co -- van löy -- täp
  Hart -- joil -- lans sen sä -- lyt -- täp, __ _ _ _
  Hart -- joil -- lans sen sä -- lyt -- täp.
}

stanzaFourLyricsFin = \lyricmode {
  \set stanza = #"4. "
  Ah arm -- jast ar -- mon ha -- luu
  Jong sä pa -- ras pai -- men Je -- su
  Mei -- dhän coh -- tam can -- noid, __ _ _ _ _
  mei -- dhän coh -- tam can -- noid:
  Ei o-le ki -- puu sem -- mois -- ta
  Quins kär -- seid kyll kip -- jäs -- tä
  Tänn tu -- lid näin nöy -- rä -- xi
  Mei -- dhän täh -- tem or -- ja -- xi, __ _ _ _
  mei -- dhän täh -- tem or -- ja -- xi.
}

stanzaFiveLyricsFin = \lyricmode {
  \set stanza = #"5. "
  Cuo -- lon ki -- vud cat -- kai -- sid
  Nos -- tu -- as kär -- men pään pol -- jid
  Hel -- ve -- tin hä -- vi -- tid, __ _ _ _ _
  hel -- ve -- tin hä -- vi -- tid.
  Fan -- gid Pha -- ra-on kä -- dhes -- tä
  Pääs -- tid va -- pax vae -- vaa -- sed
  O -- tid pois or -- ju -- dhes -- ta
  Saa -- tad ty -- ghös tae -- va -- sen, __ _ _ _
  saa -- tad ty -- ghös tae -- va -- sen.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 d'2. }

	d2. d4 |
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 b2. }

	\clef "treble_8"
	b2. b4 |
}

BassMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 g2. }

	\clef bass
	g2. g4 |
}
