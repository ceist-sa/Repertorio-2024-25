\version "2.24.4"
\include "../../styles.ily"
\include "globals.ily"

\include "flute.ly"
\include "first_clarinet.ly"
\include "second_clarinet.ly"

\include "first_violin.ly"
\include "second_violin.ly"
\include "viola.ly"
\include "cello.ly"
\include "double_bass_cello.ly"
\include "bassoon.ly"


\book {
    \paper {
        #(set-paper-size "b4")
        indent = 2\cm
        short-indent = 0.2\cm
        ragged-last-bottom = ##f
        ragged-bottom = ##f
    }
    \header {
        filename = "Sibelius - Valse Triste - GERAL"
    }
    \score {
        <<
            \new StaffGroup <<
                \flute_conductor

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