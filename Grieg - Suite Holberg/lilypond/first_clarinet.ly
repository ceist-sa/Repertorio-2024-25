\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"
\include "globals_parts.ily"

\include "1-praelude/clarinet.ily"
\include "2-sarabande/clarinet.ily"
\include "3-gavotte/clarinet.ily"
\include "4-air/clarinet.ily"
\include "5-rigaudon/clarinet.ily"

\bookpart {
    
    \header {
        instrument = "Clarinete I"
        filename = "Grieg - Suite Holberg - CLARINET I"
    }
    \clarinetI_praelude
    \pageBreak
    \clarinetI_sarabande
    \clarinetI_gavotte
    \clarinetI_air
    \clarinetI_rigaudon
}