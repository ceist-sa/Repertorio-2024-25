\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

\include "1-praelude/oboe.ily"
\include "2-sarabande/oboe.ily"
\include "3-gavotte/oboe.ily"
\include "4-air/oboe.ily"
\include "5-rigaudon/oboe.ily"

oboe_conductor = \relative do'' {
    \new Staff \with {
        instrumentName = \oboe_name_long
        shortInstrumentName = \oboe_name_short
    }
    \oboe
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = "Oboe I"
        filename = "Grieg - Suite Holberg - OBOE I"
    }
    \oboe_praelude
    \oboeI_sarabande
    \oboeI_gavotte
    \oboeI_air
    \oboe_rigaudon
}