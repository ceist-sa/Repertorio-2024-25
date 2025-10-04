\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

\include "1-praelude/second_violin.ily"
\include "2-sarabande/second_violin.ily"
\include "3-gavotte/second_violin.ily"
\include "4-air/second_violin.ily"
\include "5-rigaudon/second_violin.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        ragged-bottom = ##f
        ragged-last-bottom = ##f
        page-count = 6
    }
    \header {
        instrument = \second_violin_name_long
        filename = "Grieg - Suite Holberg - VIOLIN II"
    }
    \second_violin_praelude
    \second_violin_sarabande
    \second_violin_gavotte
    \second_violin_air
    \second_violin_rigaudon
}