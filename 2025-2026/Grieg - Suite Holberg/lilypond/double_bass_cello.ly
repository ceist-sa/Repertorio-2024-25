\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"
\include "globals_parts.ily"

\include "1-praelude/double_bass_cello.ily"
\include "2-sarabande/double_bass_cello.ily"
\include "3-gavotte/double_bass_cello.ily"
\include "4-air/double_bass_cello.ily"
\include "5-rigaudon/double_bass_cello.ily"

\bookpart {
    \header {
        instrument = \double_bass_cello_name_long
        filename = "Grieg - Suite Holberg - BASS (CELLO)"
    }
    \double_bass_cello_praelude
    \pageBreak
    \double_bass_cello_sarabande
    \double_bass_cello_gavotte
    \double_bass_cello_air
    \pageBreak
    \double_bass_cello_rigaudon
}