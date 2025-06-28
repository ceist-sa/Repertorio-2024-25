\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

clarinetI = \relative do' {
    \set Staff.midiInstrument = #"clarinet"
    \override NoteHead.color = #clarinet-range
    \clef treble
    fa4 r sol r |
    lab r sib r | 
    sol r do, r |
    do r mib r |
    mib r sib' r |
    sib r lab r |
    do, r fa r |
    la r sol r |
    fa r lab r |
    sol r fa r |
    reb' r do r |
    sib r sib r |
    sib r fa r |
    sol r sol4\fermata r8 sol8 |
    fa sol lab16 (sib) do8 do,4 r8 sib8 |
    sib8 lab16 (sib) do8 sib lab2\fermata |
}

clarinetII = \relative do' {
    \set Staff.midiInstrument = #"clarinet"
    \override NoteHead.color = #clarinet-range
    \clef treble
    lab4 r sib r |
    do r fa, r |
    sol r do r |
    fa, r do' r |
    do r fa r |
    sib, r re r |
    sol, r lab r |
    re r do r|
    sol r fa r |
    do' r do r |
    sib r fa' r |
    fa r sib r |
    sib, r si r |
    re r sib\fermata r8 mi8 |
    do8 reb16 (mi,) fa8 do' fa,4 r8 reb'8 | 
    sol,8 reb' lab16 (sib) do8 do2\fermata | 
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
                    <<\clarinetI \marks>>
                }
            }
            \new Staff \with {
                instrumentName = "Clarinete II"
                shortInstrumentName = "Cl. II"
            } {
                \transposition sib
                \transpose do re {
                    <<\clarinetII \marks>>
                }
            }
        >>
    }
}