
\header {
  title = "Nunc Zymphonizate"
  subtitle = "Porin triviaalikoulun nuottikirja (1725)"
  subsubtitle = "alla quarta bassa"
  composer = "Giovanni Gastoldi (n. 1554–1609)"
%  instrument = "Voice (SATB)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "Nuotit on lisensoitu Creative Commons Nimeä-JaaSamoin 3.0 (CC BY-SA 3.0) -ehdoin."
  tagline = "Lähdekoodit löytyvät osoitteesta https://github.com/ykarikos/triviaalikoulu"
}

#(set-global-staff-size 16)

\paper {
  system-system-spacing.basic-distance = #18
  #(define fonts
      (make-pango-font-tree "Palatino"
                            "Nimbus Sans"
                            "Luxi Mono"
                            (/ staff-height pt 20)))
}
