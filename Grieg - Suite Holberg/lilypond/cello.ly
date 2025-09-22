\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

\include "1-praelude/cello.ily"
\include "2-sarabande/cello.ily"
\include "3-gavotte/cello.ily"
\include "4-air/cello.ily"
\include "5-rigaudon/cello.ily"

cello_conductor = \relative sol, {
    \new GrandStaff \with {
        \consists "Keep_alive_together_engraver"
        instrumentName = \cello_name_long
        shortInstrumentName = \cello_name_short
    }
    \cello_staves
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = "Cello"
        filename = "Grieg - Suite Holberg - CELLO"
    }
    \cello_praelude
    \cello_sarabande
    \cello_gavotte
    \cello_air
    \cello_rigaudon
}