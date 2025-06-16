\version "2.24.4"
\language "portugues"

\include "ranges.ily"

\parallelMusic fluteI, fluteII, fluteIII, oboe, clarinetIII {
    % Bar 1
    r4 do r4 mi |
    r4 lab' r4 sib |
    lab'4 fa sib sol |
    do4 r do r |
    fa,4 r sol r |

    % Bar 2
    r fa r sol |
    r do, r reb |
    do, la' reb sib |
    fa r fa r |
    lab r sib r |

    % Bar 3
    r mi r fa |
    r do r do |
    sol r lab fa |
    mi r do r |
    do r fa r |

    % Bar 4
    do do'8 (lab) mib!4 reb'8 (sib16 sol)|
    lab'4 fa sib mib, |
    fa4 r sol r |
    fa4 r sol r |
    fa,4 r sol r |

    % Bar 5
    mib do fa sib8 (fa16 re |
    do4 lab' sib r4 |
    lab r re,! r |
    lab r re,! r |
    lab r re,! r |

    % Bar 6
    sib'4) sol r lab |
    r mib, r fa |
    mib r si' re, |
    mib r si si |
    mib r si' r |

    % Bar 7
    r sol lab re,! |
    r mib reb si' |
    do' do lab lab |
    do r fa r |
    do r fa, r |

    % Bar 8
    re r mib fa! ~|
    la fas do re ~|
    fas r sol sol ~|
    fas r sol r |
    fas r sol r |   

    % Bar 9
    fa mi fa r |
    re do do re |
    sol r lab! r |
    do, r re! r |
    do r re,! r |

    % Bar 10
    sol sol8 (mi) lab4 la8 (fa) |
    do4 r do r |
    mi r fa r |
    mi r fa r |
    mi r fa r | 

    % Bar 11
    sib sol8 (mib) fa4 do'8 (fa,) |
    fa4 r mib la8 (fa) |
    reb4 r do r |
    sol r la r |
    sol r la r |

    % Bar 12
    fa sib solb solb |
    reb r reb reb |
    sib' r sib sib |
    sib, r sib r |
    sib r sib r |

    % Bar 13
    sol! r lab r |
    mi r fa r |
    sib r si r |
    reb r re r |
    reb r re, r |

    % Bar 14
    sol r sol\fermata r |
    re r reb\fermata r |
    si r sib\fermata r8 do,8 |
    sol4 r mi\fermata r8 do8 |
    sol4 r mi\fermata r8 do'8 |

    % Bar 15
    r8 reb'8 (do sib lab4) r4 |
    r8 sib'8 (lab sol fa4) r4 |
    fa8 sib do4 reb r |
    fa8 sib do4 reb r8 sol,8 |
    fa,8 sib do4 reb r8 sol,8 |

    % Bar 16
    r8 fa4 mi8 fa2\fermata |
    r8 reb'8 do16 sib do8 do2\fermata |
    r8 sib8 lab16 sib do8 lab 2\fermata |
    do,8 sib do do fa2\fermata |
    do8 sib do do fa,2\fermata |
}

fluteI = \relative do' \fluteI
fluteII = \relative do' \fluteII
fluteIII = \relative do' \fluteIII
oboe = \relative do' \oboe
clarinetIII = \relative do' \clarinetIII

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
    sol sol4\fermata r8 sol8 |
    fa sol lab16 (sib) do8 do,4 r8 sib8 |
    sib8 lab16 (sib) do8 sib lab2\fermata |
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
    re sol, sib\fermata r8 mi8 |
    do8 reb16 (mi,) fa8 do' fa,4 r8 reb'8 | 
    sol,8 reb' lab16 (sib) do8 do2\fermata | 
}

global = {
    \key do \minor
    \time 4/4
    \tempo "Adagio assai"
    s1 * 16
    \bar "|."
}

clarinets_I_and_II = 
    \new GrandStaff {
        <<
            \new Staff
                \with {
                    instrumentName = "Clarinete I"
                    shortInstrumentName = "Cl. I"
                    midiInstrument = #"clarinet"
                }
            {
                \override NoteHead.color = #clarinet-range
                \transposition sib
                \transpose do re {<<\global \clarinetI>>}
            }
            \new Staff
                \with {
                    instrumentName = "Clarinete II"
                    shortInstrumentName = "Cl. II"
                    midiInstrument = #"clarinet"
                }
            {
                \override NoteHead.color = #clarinet-range
                \transposition sib
                \transpose do re {<<\global \clarinetII>>}
            }
        >>
    }

organ =
    \new StaffGroup {
        <<
            \new Staff
                \with {
                    instrumentName = "Flauta I"
                    shortInstrumentName = "Fl. I"
                    midiInstrument = #"flute"
                }
            {
                \override NoteHead.color = #flute-range
                << \global \fluteI >>
            }

            \new Staff
                \with {
                    instrumentName = "Flauta II"
                    shortInstrumentName = "Fl. II"
                    midiInstrument = #"flute"
                }
            {
                \override NoteHead.color = #flute-range
                << \global \fluteII >>
            }

            \new Staff
                \with {
                    instrumentName = "Flauta III"
                    shortInstrumentName = "Fl. III"
                    midiInstrument = #"flute"
                }
            {
                \override NoteHead.color = #flute-range
                << \global \fluteIII >>
            }

            \new Staff
                \with {
                    instrumentName = "Oboé"
                    shortInstrumentName = "Ob."
                    midiInstrument = #"oboe"
                }
            {    
                \override NoteHead.color = #oboe-range
                << \global \oboe >>
            }

            \new Staff
                \with {
                    instrumentName = "Clarinete III"
                    shortInstrumentName = "Cl. III"
                    midiInstrument = #"clarinet"
                }
            {
                \override NoteHead.color = #clarinet-range
                \transposition sib
                \transpose do re {<< \global \clarinetIII >>}
            }
        >>
    }

\score {
    <<  
        \clarinets_I_and_II

        \organ

        % \new GrandStaff \with {\consists Merge_rests_engraver} {
        %     <<
        %     \new Staff
        %     {
        %         \global << \fluteI \\ \fluteII \\ \fluteIII  >>
        %     }
            
        %     \new Staff
        %     {
        %         \global << \oboe \\ \clarinetIII \\ {\clef "bass^8"}>>
        %     }
        %     >>
        % }
    >>

    \layout{}
    \midi{ \tempo 8 = 68 }
}