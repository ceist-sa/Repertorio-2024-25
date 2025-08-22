\version "2.24.4"

\include "first_violin.ily"
\include "second_violin.ily"
\include "viola.ily"
\include "cello.ily"
\include "double_bass.ily"

conductor = {
    \new StaffGroup {
        <<  
            \first_violin_conductor

            \second_violin_conductor

            \viola_conductor
            
            \cello_conductor

            \double_bass_conductor
        >>
    }
}

% \score{
%     \conductor
%     \layout {}
% }