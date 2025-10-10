\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "music/bassoon.ily"
\include "globals.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        page-count = #1
    }
    \header {
        instrument = "Fagote"
        filename = "Sibelius - Valse Triste - FAGOTE"
    }
    \bassoon_part
}