\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"

\include "1-praelude/oboe.ily"
\include "2-sarabande/oboe.ily"
\include "3-gavotte/oboe.ily"
\include "4-air/oboe.ily"
\include "5-rigaudon/oboe.ily"

\bookpart {
    
    \header {
        instrument = "Oboé I"
        filename = "Grieg - Suite Holberg - OBOE I"
    }
    \oboeI_praelude
    \pageBreak
    \oboeI_sarabande
    \oboeI_gavotte
    \oboeI_air
    \oboe_rigaudon
}