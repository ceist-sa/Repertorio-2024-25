\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

\include "1-praelude/double_bass_cello.ily"
\include "2-sarabande/double_bass_cello.ily"
\include "3-gavotte/double_bass_cello.ily"
\include "4-air/double_bass_cello.ily"
\include "5-rigaudon/double_bass_cello.ily"

double_bass_cello_conductor = \relative do {
    \new Staff \with {
        instrumentName = \double_bass_cello_name_long
        shortInstrumentName = \double_bass_cello_name_short
    }
    \double_bass_cello
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = "Bass (cello)"
        filename = "Grieg - Suite Holberg - BASS (CELLO)"
    }
    \double_bass_cello_praelude
    \double_bass_cello_sarabande
    \double_bass_cello_gavotte
    \double_bass_cello_air
    \double_bass_cello_rigaudon
}