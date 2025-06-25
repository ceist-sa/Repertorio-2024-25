\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"


fluteI = \relative do' {
    \set Staff.midiInstrument = #"flute"
    \override NoteHead.color = #flute-range
    \clef treble

    % Bar 1
    do'4 r4 sib r |
    lab r reb r |
    sol, r lab8 lab8 do8. mi16 |
    fa4 r sib r |
    mib, r fa r |

    % Bar 6
    sib, r lab r |
    sol r lab r |
    la la mib' si8 r8 |
    sol4 r4 fa lab |
    sol r do r |
    sib reb do fa~ |

    % Bar 12
    fa r reb r |
    mi, r lab r |
    re, r sol\fermata r8 mi'8 |
    fa4 do lab r4 |
    mi8 fa fa mi fa2\fermata
}

fluteII = \relative do'' {
    \set Staff.midiInstrument = #"flute"
    \override NoteHead.color = #flute-range
    \clef treble

    % Bar 1
    lab4 r4 sol r |
    do r sib r |
    mi, r fa8 fa lab lab |
    do4 r sol r |
    do r lab r |

    % Bar 6
    sol r fa r |
    mib r fa r |
    do' re, do re8 r8 |
    fa4 r fa fa |
    do r fa r |
    sib sib fa r8 fa8 |
    
    % Bar 12
    sib4 r reb r |
    sol, r lab r |
    re, r mi \fermata r8 do8 |
    do'4 lab fa r |
    sol8 lab do, do do2 \fermata |
}

fluteIII = \relative do' {
    \set Staff.midiInstrument = #"flute"
    \override NoteHead.color = #flute-range
    \clef treble

    do4 r4 lab r |
}
    
oboe = \relative do' {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    do4 r4 lab r |
}
    
clarinetIII = \relative do' {
    \set Staff.midiInstrument = #"clarinet"
    \override NoteHead.color = #clarinet-range
    \clef treble

    % Bar 1
    fa,4 r4 sol4 r|
    lab r sib r |
    do r fa r |
    fa, r4 sol4 r|
    lab! r re,! r |

    % Bar 6
    mib r si' r |
    do r fa, r |
    fas r sol r |
    do r re,! r |
    mi r fa r |
    sol r la r |    %confirmar se é la ou lab

    % Bar 12
    sib r sib r |
    reb r reb, r|  
    sol r mi \fermata r8 do'8 |
    fa, sib do4 reb r8 sol,8 |
    do sib do do fa,2 \fermata 
}

\bookpart {
    \paper {
        page-count = 1
        indent = 2\cm
        short-indent = 1\cm
    }
    \header {
        instrument = "Sopros (Órgão)"
        filename = "Bach - Cantata nº 12 - SOPROS (ÓRGÃO)"
    }
    \score {
        \new StaffGroup <<
            \new Staff \with {
                instrumentName = "Flauta I"
                shortInstrumentName = "Fl. I"
            } {
                <<\fluteI \marks>>
            }

            \new Staff \with {
                instrumentName = "Flauta II"
                shortInstrumentName = "Fl. II"
            } {
                <<\fluteII \marks>>
            }

            %{\new Staff \with {
                instrumentName = "Flauta III"
                shortInstrumentName = "Fl. III"
            } {
                \fluteIII
            }

             \new Staff \with {
                instrumentName = "Oboé"
                shortInstrumentName = "Ob."
            } {    
                \oboe
            } %}

            \new Staff \with {
                instrumentName = "Clarinete III"
                shortInstrumentName = "Cl. III"
            } {
                \transposition sib
                \transpose do re {
                    <<\clarinetIII \marks>>
                }
            }
        >>
    }
}