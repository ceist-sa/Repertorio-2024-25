\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"
\include "globals_parts.ily"

\include "1-praelude/oboe.ily"
\include "2-sarabande/oboe.ily"
\include "3-gavotte/oboe.ily"
\include "4-air/oboe.ily"
\include "5-rigaudon/oboe.ily"

\bookpart {
    
    \header {
        instrument = "Oboé II"
        filename = "Grieg - Suite Holberg - OBOE II"
    }
    \oboeII_praelude
    \oboeII_sarabande
    \oboeII_gavotte
    \oboeII_air
    \oboe_rigaudon
}