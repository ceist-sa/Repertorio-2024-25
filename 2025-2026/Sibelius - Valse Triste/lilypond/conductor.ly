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

breaks = {
    s2. * 8 |
    % A
    s2. * 16 |
    % B
    s2. * 15 |
    % \tempo "rall."
    s2. |
    % C
    s2. * 14 |
    s2 s4 |
    s2. |
    % D
    s2. * 16 |
    % E
    \break
    \acciaccatura s8 s2. % weird, but needed for line breaks 
    s2. * 15 |
    % F
    \break
    s2. * 10 |
    % \barlineFermata
    \break
    s2.* 3 |
    % \tempo "rit."
    s2. |
    % \tempo "Lento"
    s2. * 4 |
    % G
    % \barlineFermata
    \break
    s2. * 8 |
    \break
    s2. * 8 |
    \break
    s2. * 7 |
    % H
    \break
    s2. * 24 |
    % I / J
    s2. * 8 |
    % K
    \break
    s2. * 8 |
    % L
    \break
    s2. * 16 |
    % M
    \break
    s2. * 9 |
    % \tempo "Lento assai"
    s2. * 8 |
}

#(set-global-staff-size 17)

\layout {
    \context {
        \Staff 
        \RemoveEmptyStaves
    }
}

\paper {
    page-count = #11
}

\book {
    \header {
        filename = "Sibelius - Valse Triste - CONDUCTOR"
    }
    \pageBreak
    \score {
        <<
            \new Staff  \with { \RemoveAllEmptyStaves } \breaks
            \new StaffGroup <<
                << \flute_conductor >> % breaks must go somewhere
                \oboes_conductor
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