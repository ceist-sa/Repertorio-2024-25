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
    s2 |
    s1 * 3 | 
    \break
    s1 * 5 |
    s2 |
    \break % H
    s2 |
    s1 * 5 |
    \break
    s1 * 4 |
    \break
    s1 * 5 |
    s2 |
    \break % I
    s2 |
    s1 * 3 |
    \break
    s1 * 5 |
    \break
    s1 * 3 |
    \break % K
    s1 * 5 |
    s2 |
    \break % MUSETTE
    s2 |
    s1 * 7 |
    s2 |
    \break % L 
    % ...
}

conductor_gavotte = \score {
    \header { piece = "III. Gavotte" }
    \layout {
        \context {
            \Staff
            \RemoveAllEmptyStaves
        }
    }
    <<
        \new StaffGroup {
            <<
                \breaks
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
%     \conductor_gavotte
%     \layout {}
%     \midi {\tempo 2 = 90}
% }