\paper {
    #(set-paper-size "a4")
    left-margin = 20
    right-margin = 20
    top-margin = 20
    bottom-margin = 20
    #(define fonts
        (make-pango-font-tree "Palatino"
                              "Nimbus Sans"
                              "Luxi Mono"
                              (/ staff-height pt 20)))
}