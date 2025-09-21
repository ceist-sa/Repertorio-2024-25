\version "2.24.4"

\include "flute.ily"
\include "oboe.ily"
\include "clarinet.ily"

\include "first_violin.ily"
\include "second_violin.ily"
\include "viola.ily"
\include "cello.ily"
\include "double_bass_cello.ily"

conductor = {
    <<
        \new StaffGroup {
            <<
                \flute_conductor
                \oboe_conductor
                \clarinet_conductor
            >>
        }
        \new StaffGroup {
            <<
                \first_violin_conductor
                \second_violin_conductor
                \viola_conductor
                \cello_conductor
                \double_bass_cello_conductor
            >>
        }
    >>
}

\score{
    \conductor
    \layout {}
    \midi { \tempo 4 = 60}
}