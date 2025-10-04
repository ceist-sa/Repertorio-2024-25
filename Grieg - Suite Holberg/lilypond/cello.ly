\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

\include "1-praelude/cello.ily"
\include "2-sarabande/cello.ily"
\include "3-gavotte/cello.ily"
\include "4-air/cello.ily"
\include "5-rigaudon/cello.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        ragged-bottom = ##f
        ragged-last-bottom = ##f
    }
    \header {
        instrument = \cello_name_long
        filename = "Grieg - Suite Holberg - CELLO"
    }
    \cello_praelude
    \cello_sarabande
    \cello_gavotte
    \cello_air
    \pageBreak
    \cello_rigaudon
}