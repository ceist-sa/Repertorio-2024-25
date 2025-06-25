\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

cello = \relative do, {
    \set Staff.midiInstrument = #"cello"
    \override NoteHead.color = #cello-range
    \clef bass
    fa4 r sol r | 
    lab r sib r |
    do r fa, r |
    fa' r sol r |
    lab r re,! r |
    mib r si r |
    do r fa, r |
    fas r sol r |
    do r re r |
    mi r fa r |
    sol r la r |
    sib r sib, r |
    reb r re r |
    sol, r mi \fermata r8 do8 |
    fa si do4 reb r8 sol,8 |
    do [sib] do [do,] fa2 \fermata |
}

\bookpart {
    \header {
        instrument = "Violoncelo"
        filename = "Bach - Cantata nº 12 - VIOLONCELO"
    }
    \score {
        \new Staff {
            <<\cello \marks>>
        }
    }
}