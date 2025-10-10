\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "music/second_clarinet.ily"
\include "globals.ily"

\bookpart {
    \paper {
        page-count = #1
    }
    \header {
        instrument = "Clarinete em Si♭ II"
        filename = "Sibelius - Valse Triste - CLARINET II"
    }
    \second_clarinet_part
}