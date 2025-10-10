\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"

\include "1-praelude/double_bass.ily"
\include "2-sarabande/double_bass.ily"
\include "3-gavotte/double_bass.ily"
\include "4-air/double_bass.ily"
\include "5-rigaudon/double_bass.ily"

\bookpart {
    \header {
        instrument = "Double Bass"
        filename = "Grieg - Suite Holberg - DOUBLE BASS"
    }
    \double_bass_praelude
    \double_bass_sarabande
    \double_bass_gavotte
    \pageBreak
    \double_bass_air
    \pageBreak
    \double_bass_rigaudon
}