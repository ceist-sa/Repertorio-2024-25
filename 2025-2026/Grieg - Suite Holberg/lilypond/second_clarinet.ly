\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"

\include "1-praelude/clarinet.ily"
\include "2-sarabande/clarinet.ily"
\include "3-gavotte/clarinet.ily"
\include "4-air/clarinet.ily"
\include "5-rigaudon/clarinet.ily"

\bookpart {
    
    \header {
        instrument = "Clarinete II"
        filename = "Grieg - Suite Holberg - CLARINET II"
    }
    \clarinetII_praelude
    \clarinetII_sarabande
    \clarinetII_gavotte
    \clarinetII_air
    \clarinetII_rigaudon
}