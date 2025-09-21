\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

\include "1-praelude/flute.ily"
\include "2-sarabande/flute.ily"
\include "3-gavotte/flute.ily"
\include "4-air/flute.ily"
\include "5-rigaudon/flute.ily"

flute_conductor = \relative do'' {
    \new Staff \with {
        instrumentName = \flute_name_long
        shortInstrumentName = \flute_name_short
        midiInstrument = #"flute"
    }
    \flute
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = "Flute II"
        filename = "Grieg - Suite Holberg - FLUTE II"
    }
    \fluteII_praelude
    \fluteII_sarabande
    \fluteII_gavotte
    \fluteII_air
    \flute_rigaudon
}