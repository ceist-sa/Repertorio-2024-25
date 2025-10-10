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
    
    \header {
        instrument = "Flauta II"
        filename = "Grieg - Suite Holberg - FLUTE II"
    }
    \fluteII_praelude
    \fluteII_sarabande
    \fluteII_gavotte
    \fluteII_air
    \flute_rigaudon
}