\version "2.24.4"

\include "bach.ly"

\book{
    \header {
        title = "Kantate Nr. 12" 
        subtitle = \markup{\small \normal-text "am Sonntag Jubilate"}
        subsubtitle = "Weinen, Klagen, Sorgen, Zagen"
        composer = \markup{\vspace #1 "Joh. Seb. Bach (BWV 12)"}
        tagline = "CEIST"
        filename = "Bach - Cantata nº 12 - GERAL"
    }
    \paper {
        system-count = #4
        top-margin = 1\cm
        bottom-margin = 1\cm
        left-margin = 2\cm
        right-margin = 2\cm
        markup-system-spacing = #'((basic-distance . 10) (padding . 5))
    }

    \score {
        \header {
            piece = \markup{\bold \large "Nº 1 Sinfonie"}
        }
        <<
            \clarinets_I_and_II
            \organ
        >>
    }
}