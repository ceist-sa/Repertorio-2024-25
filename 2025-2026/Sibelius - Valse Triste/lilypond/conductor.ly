\version "2.24.4"
\include "../../../styles/style_conductor.ily"
\include "globals.ily"

\include "music/flute.ily"
\include "music/oboe.ily"
\include "music/first_clarinet.ily"
\include "music/second_clarinet.ily"

\include "music/first_violin.ily"
\include "music/second_violin.ily"
\include "music/viola.ily"
\include "music/cello.ily"
\include "music/double_bass_cello.ily"
\include "music/bassoon.ily"

#(set-global-staff-size 17)

\layout {
    \context {
        \Staff 
        \RemoveEmptyStaves
    }
}

\book {
    \header {
        filename = "Sibelius - Valse Triste - GERAL"
    }
    \pageBreak
    \score {
        <<
            \new StaffGroup <<
                \flute_conductor
                \first_oboe_conductor
                \second_oboe_conductor
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