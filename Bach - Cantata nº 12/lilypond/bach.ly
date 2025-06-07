\version "2.24.4"
\language "portugues"

\include "ranges.ily"

global = {
    \key do \minor
    \time 4/4
}

\parallelMusic fluteI, fluteII, fluteIII, oboe, clarinetIII {
    % Bar 1
    la2 |
    si2 |
    do2 |
    re2 |
    sol2 |
}

clarinetI = \relative do' {
    \clef treble
    fa4 do sol' mi |
    lab fa sib sol | 
    sol mi do fa |
    do lab' mib sib' |
    mib, do' sib fa |
    sib sol lab re, |
    do sol' fa2 |
    la4 re, sol fa |
    fa mi lab fa |
    sol2 fa4 la |
    reb sib do2 |
    sib4 reb sib2 ~ |
    sib2 fa |
    sol sol4 r8 sol8 |
    fa sol lab16 (sib) do8 do,4 r8 sib8 |
    sib8 lab16 (sib) do8 sib lab2 |
}

clarinetII = \relative do' {
    \clef treble
    lab4 fa sib sol |
    do lab fa sib |
    sol do2 lab4 |
    fa fa' do sol' |
    do, lab' fa re |
    sib mib re si |
    sol do lab fa |
    re' fas, do' sol ~ |
    sol do fa, re' |
    do mi do fa |
    sib, sol' fa la |
    fa sib2 sib,4 ~ |
    sib reb si re |
    re sol, si r8 mi8 |
    do8 reb16 (mi,) fa8 do fa4 r8 reb'8 | 
    sol,8 reb' la16 (sib) do8 do,2 | 
}

clarinetIII = \relative do {
    \key do \major
    do4 re mi fa sol la si do re mi fa sol la si do re mi fa sol la si do re mi fa sol la las si do
}

\score {
    <<  
        % \new GrandStaff {
        %     <<
        %         \new Staff
        %             \with {
        %                 instrumentName = "Clarinet I"
        %                 shortInstrumentName = "Cl. I"
        %                 midiInstrument = #"clarinet"
        %             }
        %         {
        %             \override NoteHead.color = #clarinet-range
        %             \transpose do re {\global \clarinetI}
        %         }
        %         \new Staff
        %             \with {
        %                 instrumentName = "Clarinet II"
        %                 shortInstrumentName = "Cl. II"
        %                 midiInstrument = #"clarinet"
        %             }
        %         {
        %             \override NoteHead.color = #clarinet-range
        %             \transpose do re {\global \clarinetII}
        %         }
        %     >>
        % }

        % \new Staff
        %     \with {
        %         instrumentName = "Flutes"
        %         shortInstrumentName = "Fl."
        %         midiInstrument = #"flute"
        %     }
        % {
        %     \global
        %     << 
        %         \relative do' \fluteI \\
        %         \relative do' \fluteII \\
        %         \relative do' \fluteIII
        %     >>
        % }

        % \new Staff
        %     \with {
        %         instrumentName = "Oboe"
        %         shortInstrumentName = "Ob."
        %         midiInstrument = #"oboe"
        %     }
        % {    
        %     \global \relative do' \oboe
        % }

        \new Staff
            \with {
                instrumentName = "Clarinet III"
                shortInstrumentName = "Cl."
                midiInstrument = #"clarinet"
            }
        {
            \override NoteHead.color = #clarinet-range
            \transposition sib
            \transpose do re {\clarinetIII}
        }
    >>

    \layout{}
    \midi{}
}