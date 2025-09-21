\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

\include "1-praelude/conductor.ily"
\include "2-sarabande/conductor.ily"
\include "3-gavotte/conductor.ily"
\include "4-air/conductor.ily"
\include "5-rigaudon/conductor.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = "Violin I"
        filename = "Grieg - Suite Holberg - CONDUCTOR"
    }
    \conductor_praelude
    \conductor_sarabande
    \conductor_gavotte
    \conductor_air
    \conductor_rigaudon
}