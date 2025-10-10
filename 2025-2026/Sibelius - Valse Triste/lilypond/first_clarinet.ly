\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "music/first_clarinet.ily"
\include "globals.ily"

\bookpart {
    \paper {
        page-count = #1
    }
    \header {
        instrument = "Clarinete em Si♭ I"
        filename = "Sibelius - Valse Triste - CLARINET I"
    }
    \first_clarinet_part
}