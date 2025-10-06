\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"
\include "globals_parts.ily"
\include "instrument_names.ily"

\include "1-praelude/bassoon.ily"
\include "2-sarabande/bassoon.ily"
\include "3-gavotte/bassoon.ily"
\include "4-air/bassoon.ily"
\include "5-rigaudon/bassoon.ily"

\bookpart {
    
    \header {
        instrument = \bassoon_name_long
        filename = "Grieg - Suite Holberg - BASSOON"
    }
    \bassoon_praelude
    \bassoon_sarabande
    \bassoon_gavotte
    \bassoon_air
    \bassoon_rigaudon
}