\version "2.24.4"

\include "flute.ily"
\include "oboe.ily"
\include "clarinet.ily"
\include "bassoon.ily"

\include "first_violin.ily"
\include "second_violin.ily"
\include "viola.ily"
\include "cello.ily"
\include "double_bass_cello.ily"



conductor_rigaudon = \score {
    \header { piece = "V. Rigaudon" }
    \layout {
        \context {
            \Staff
            \RemoveAllEmptyStaves
        }
    }
    <<
        \new StaffGroup {
            <<
                \flute_conductor
                \oboe_conductor
                \clarinet_conductor
                \bassoon_conductor
            >>
        }

        \new StaffGroup {
            <<
               \first_violin_solo_conductor
               \viola_solo_conductor
            >>
        }

        \new StaffGroup {
            <<
                \first_violin_tutti_conductor
                \second_violin_conductor
                \viola_tutti_conductor
                \cello_conductor
                \double_bass_cello_conductor
            >>
        }
    >>
}

% \score{
%     \conductor_rigaudon
%     \layout {
%         \context {
%             \Staff
%             \RemoveAllEmptyStaves
%         }
%     }
%     \midi {\tempo 2 = 120}
% }