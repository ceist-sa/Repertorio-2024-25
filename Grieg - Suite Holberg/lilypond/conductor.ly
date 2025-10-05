\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

\include "1-praelude/conductor.ily"
\include "2-sarabande/conductor.ily"
\include "3-gavotte/conductor.ily"
\include "4-air/conductor.ily"
\include "5-rigaudon/conductor.ily"

#(set-global-staff-size 17)

\book {
    \paper {
        #(set-paper-size "b4")
        bookTitleMarkup = \markup{ \fill-line {
            \null
            \center-column {
                \vspace #15
                \epsfile #X #110 #"Preto_direito.eps"
                \vspace #5
                \fontsize #15 \bold \fromproperty #'header:title
                \vspace #3
                \fontsize #10 \fromproperty #'header:composer
                \vspace #2
                \fontsize #8 \fromproperty #'header:opus
            }
            \null 
        }}
        scoreTitleMarkup = \markup \fontsize #10 { \vspace #2 \fill-line { \null \fromproperty #'header:piece \null } }
        indent = 2\cm
        short-indent = 0.2\cm
        ragged-last-bottom = ##f
        ragged-bottom = ##f
        system-separator-markup = \markup{\scale #'(2 . 2) \slashSeparator}
    }
    \header {
        filename = "Grieg - Suite Holberg - CONDUCTOR"
    }
    \pageBreak
    \conductor_praelude
    \pageBreak
    \conductor_sarabande
    \pageBreak
    \conductor_gavotte
    \pageBreak
    \conductor_air
    \pageBreak
    \conductor_rigaudon
}