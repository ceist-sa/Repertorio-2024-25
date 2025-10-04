\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

\include "1-praelude/first_violin.ily"
\include "2-sarabande/first_violin.ily"
\include "3-gavotte/first_violin.ily"
\include "4-air/first_violin.ily"
\include "5-rigaudon/first_violin.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        ragged-bottom = ##f
        ragged-last-bottom = ##f
    }
    \header {
        instrument = \first_violin_name_long
        filename = "Grieg - Suite Holberg - VIOLIN I"
    }
    \first_violin_praelude
    \first_violin_sarabande
    \first_violin_gavotte
    \pageBreak
    \first_violin_air
    \first_violin_rigaudon
}