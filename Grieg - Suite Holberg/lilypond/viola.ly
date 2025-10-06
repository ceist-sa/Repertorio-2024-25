\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"
\include "globals_parts.ily"

\include "1-praelude/viola.ily"
\include "2-sarabande/viola.ily"
\include "3-gavotte/viola.ily"
\include "4-air/viola.ily"
\include "5-rigaudon/viola.ily"

\bookpart {
    
    \header {
        instrument = \viola_name_long
        filename = "Grieg - Suite Holberg - VIOLA"
    }
    \viola_praelude
    \viola_sarabande
    \viola_gavotte
    \viola_air
    \viola_rigaudon
}