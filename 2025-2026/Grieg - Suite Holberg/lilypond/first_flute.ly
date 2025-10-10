\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"
\include "globals_parts.ily"

\include "1-praelude/flute.ily"
\include "2-sarabande/flute.ily"
\include "3-gavotte/flute.ily"
\include "4-air/flute.ily"
\include "5-rigaudon/flute.ily"

\bookpart {
    \paper {
        page-count = 4
    }
    \header {
        instrument = "Flauta I"
        filename = "Grieg - Suite Holberg - FLUTE I"
    }
    \fluteI_praelude
    \fluteI_sarabande
    \fluteI_gavotte
    \fluteI_air
    \flute_rigaudon
}