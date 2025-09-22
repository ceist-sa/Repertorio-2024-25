\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

\include "1-praelude/clarinet.ily"
\include "2-sarabande/clarinet.ily"
\include "3-gavotte/clarinet.ily"
\include "4-air/clarinet.ily"
\include "5-rigaudon/clarinet.ily"

clarinet_conductor = \relative do' {
    \new Staff \with {
        instrumentName = \clarinet_name_long
        shortInstrumentName = \clarinet_name_short
    }
    \clarinet
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = "Clarinet in B♭ I"
        filename = "Grieg - Suite Holberg - CLARINET I"
    }
    \clarinetI_praelude
    \clarinetI_sarabande
    \clarinetI_gavotte
    \clarinetI_air
    \clarinetI_rigaudon
}