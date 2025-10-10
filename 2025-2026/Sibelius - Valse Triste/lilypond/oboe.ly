\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "music/oboe.ily"
\include "globals.ily"

\bookpart {
    \header {
        instrument = "Oboé I"
        filename = "Sibelius - Valse Triste - OBOE I & II"
    }
    \score {
        \new Staff <<\first_oboe \marks>>
    }
    \first_oboe_part
}

\bookpart {
    \header {
        instrument = "Oboé II"
    }
    \second_oboe_part
}