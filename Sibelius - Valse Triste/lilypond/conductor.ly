\version "2.24.4"
\include "../../styles.ily"
\include "globals.ily"

\include "flute.ly"
\include "first_oboe.ly"
\include "first_clarinet.ly"
\include "second_clarinet.ly"

\include "first_violin.ly"
\include "second_violin.ly"
\include "viola.ly"
\include "cello.ly"
\include "double_bass_cello.ly"
\include "bassoon.ly"

#(set-global-staff-size 17)

\layout {
    \context {
        \Staff 
        \RemoveEmptyStaves
    }
}

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
                \fontsize #10 \bold \fromproperty #'header:subtitle
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
        filename = "Sibelius - Valse Triste - GERAL"
    }
    \pageBreak
    \score {
        <<
            \new StaffGroup <<
                \flute_conductor
                \first_oboe_conductor
                \first_clarinet_conductor
                \second_clarinet_conductor
                \bassoon_conductor
            >>

            \new StaffGroup <<
                \new GrandStaff <<
                    \first_violin_conductor
                    \second_violin_conductor
                >>
                \viola_conductor
                \cello_conductor
                \double_bass_cello_conductor
            >>
        >>
        \layout {}
    }
}