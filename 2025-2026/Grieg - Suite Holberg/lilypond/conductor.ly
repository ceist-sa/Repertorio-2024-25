\version "2.24.4"
\language "portugues"
\include "../../../styles/style_conductor.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"

\include "1-praelude/conductor.ily"
\include "2-sarabande/conductor.ily"
\include "3-gavotte/conductor.ily"
\include "4-air/conductor.ily"
\include "5-rigaudon/conductor.ily"

#(set-global-staff-size 17)

\book {
    \header {
        filename = "Grieg - Suite Holberg - CONDUCTOR"
    }
    \pageBreak
    \conductor_praelude
    \pageBreak
    \conductor_sarabande
    \pageBreak
    \conductor_gavotte
    \pageBreak
    \conductor_air
    \pageBreak
    \conductor_rigaudon
}