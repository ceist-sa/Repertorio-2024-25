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

breaks = {
    s2. * 8 |
    \break % N
    s2. * 11 |
    \break % O, repeat bar
    s2. * 13 |
    % P
    s2. * 11 |
    \break % Q
    % ...
}

conductor_air = \score {
    \header { piece = "IV. Air" }
    \layout {
        \context {
            \Staff
            \RemoveAllEmptyStaves
        }
    }
    <<
        \breaks
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
                \first_violin_conductor
                \second_violin_conductor
                \viola_conductor
                \cello_conductor
                \double_bass_cello_conductor
            >>
        }
    >>
}

% \score{
%     \conductor_air
%     \layout {
%         \context {
%             \Staff
%             \RemoveAllEmptyStaves
%         }
%     }
%     \midi {\tempo 2. = 15 }
% }