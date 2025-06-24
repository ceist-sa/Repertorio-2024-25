\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

clarinetI = \relative do' {
    \set Staff.midiInstrument = #"clarinet"
    \override NoteHead.color = #clarinet-range
    \key_time_tempo
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
    sol sol4\fermata r8 sol8 |
    fa sol lab16 (sib) do8 do,4 r8 sib8 |
    sib8 lab16 (sib) do8 sib lab2\fermata |
    \bar "|."
}

clarinetII = \relative do' {
    \set Staff.midiInstrument = #"clarinet"
    \override NoteHead.color = #clarinet-range
    \key_time_tempo
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
    re sol, sib\fermata r8 mi8 |
    do8 reb16 (mi,) fa8 do' fa,4 r8 reb'8 | 
    sol,8 reb' lab16 (sib) do8 do2\fermata | 
    \bar "|."
}

\bookpart {
    \paper {
        system-count = 6
        indent = 2\cm
        short-indent = 1\cm
    }
    \header {
        instrument = "Clarinetes I e II (Violas I e II)"
        filename = "Bach - Cantata nº 12 - CLARINETES 1 E 2 (VIOLAS 1 E 2)"
    }
    \score {
        \new GrandStaff <<
            \new Staff \with {
                instrumentName = "Clarinete I"
                shortInstrumentName = "Cl. I"
            } {
                \transposition sib
                \transpose do re {
                    \clarinetI
                }
            }
            \new Staff \with {
                instrumentName = "Clarinete II"
                shortInstrumentName = "Cl. II"
            } {
                \transposition sib
                \transpose do re {
                    \clarinetII
                }
            }
        >>
    }
}