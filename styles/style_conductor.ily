\paper {
    top-margin = 1\cm
    bottom-margin = 1\cm
    left-margin = 2\cm
    right-margin = 2\cm
    markup-system-spacing = #'((basic-distance . 10) (padding . 5))
}

\paper {
        #(set-paper-size "b4")
        bookTitleMarkup = \markup{ \fill-line {
            \null
            \center-column {
                \vspace #15
                \epsfile #X #110 #"styles/logo.eps"
                \vspace #5
                \fontsize #15 \bold \fromproperty #'header:title
                \vspace #3
                \fontsize #10 \bold \fromproperty #'header:subtitle
                \vspace #3
                \fontsize #10 \fromproperty #'header:composer
                \vspace #2
                \fontsize #8 \fromproperty #'header:opus
            }
            \null 
        }}
        scoreTitleMarkup = \markup \fontsize #10 { \vspace #2 \fill-line { \null \fromproperty #'header:piece \null } }
        indent = 2\cm
        short-indent = 0.2\cm
        ragged-last-bottom = ##f
        ragged-bottom = ##f
        system-separator-markup = \markup{\scale #'(2 . 2) \slashSeparator}
}

\header {
    tagline = ##f
}