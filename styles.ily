\paper {
    top-margin = 1\cm
    bottom-margin = 1\cm
    left-margin = 2\cm
    right-margin = 2\cm
    markup-system-spacing = #'((basic-distance . 10) (padding . 5))
    scoreTitleMarkup = \markup \fontsize #5 { \vspace #2 \fill-line { \null \fromproperty #'header:piece \null } } % Center and resize movement titles
}