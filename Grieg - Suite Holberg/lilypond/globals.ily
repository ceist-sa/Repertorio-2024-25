\version "2.24.4"

ffp = #(make-dynamic-script
            (markup #:dynamic "ffp"))
            
fpp = #(make-dynamic-script
            (markup #:dynamic "fpp"))

ffz = #(make-dynamic-script
            (markup #:dynamic "ffz"))

piup = #(make-dynamic-script
            (markup #:normal-text (#:italic "più")
                    #:dynamic "p"))

piupp = #(make-dynamic-script
            (markup #:normal-text (#:italic "più")
                    #:dynamic "pp"))

piuf = #(make-dynamic-script
            (markup #:normal-text (#:italic "più")
                    #:dynamic "f"))

pcantab = #(make-dynamic-script 
            (markup #:dynamic "p"
                    #:normal-text (#:italic "cantab.")))

crescmolto = #(make-dynamic-script
            (markup #:italic "cresc. molto"))

cantab = _\markup{\italic "cantab."}

solo = ^\markup{\smallCaps Solo}
threeSoli = ^\markup{\smallCaps "3 Soli"}
twoSoli = ^\markup{\smallCaps "2 Soli"}
tutti = ^\markup{\smallCaps Tutti}
twoCelliSoli = ^\markup{\smallCaps "2 Celli Soli"}

pizz = ^\markup{\center-align "pizz."}
arco = ^\markup{\center-align "arco"}
spicc = ^\markup{\center-align "spicc."}
div = ^\markup{\center-align "div."}
nondiv = ^\markup{\center-align "non div."}

oneStaff = {
        %  \staffHighlight "lightgreen" % for debugging purposes
        \set Staff.keepAliveInterfaces = #'()
        }
twoStaves = {
        %  \staffHighlight "lightpink" % for debugging purposes
        \unset Staff.keepAliveInterfaces
        }

\paper {
    scoreTitleMarkup = \markup \fontsize #5 { \vspace #2 \fill-line { \null \fromproperty #'header:piece \null } } % Center and resize movement titles
}