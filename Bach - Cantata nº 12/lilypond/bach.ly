\version "2.24.4"
\language "portugues"

\include "ranges.ily"

global = {
    \key do \minor
    \time 4/4
    \tempo "Adagio assai"
    s1 * 16
    \bar "|."
}

solo_oboe = \relative do' {
    \clef treble

}
solo_oboe = {
    \override NoteHead.color = #oboe-range
    <<\global \solo_oboe>>
}

% ================ STRINGS ================
violinI = \relative do' {
    \clef treble
    % insert notes here
}
violinI = {
    \override NoteHead.color = #violin-range
    <<\global \violinI>>
}


violinII = \relative do' {
    \clef treble
    % insert notes here
}
violinII = {
    \override NoteHead.color = #violin-range
    <<\global \violinII>>
}


violaI = \relative do' {
    \clef alto
    % insert notes here
}
violaI = {
    \override NoteHead.color = #viola-range
    <<\global \violaI>>
}


violaII = \relative do' {
    \clef alto
    % insert notes here
}
violaII = {
    \override NoteHead.color = #viola-range
    <<\global \violaII>>
}


cello = \relative do, {
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
    do [sib] do [do,] fa2 \fermata|
}
cello = {
    \override NoteHead.color = #cello-range
    <<\global \cello>>
}

% ================ CLARINETS I & II (VIOLAS) ================

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
clarinetI = {
    \override NoteHead.color = #clarinet-range
    \transposition sib
    \transpose do re {<<\global \clarinetI>>}
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
clarinetII = {
    \override NoteHead.color = #clarinet-range
    \transposition sib
    \transpose do re {<<\global \clarinetII>>}
}

% ================ "ORGAN" ================

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

fluteI = {
    \override NoteHead.color = #flute-range
    <<\global \relative do' \fluteI>>
}
fluteII = {
    \override NoteHead.color = #flute-range
    <<\global \relative do' \fluteII>>
}
fluteIII = {
    \override NoteHead.color = #flute-range
    <<\global \relative do' \fluteIII>>
}
oboe = {
    \override NoteHead.color = #oboe-range
    <<\global \relative do' \oboe>>
}
clarinetIII = {
    \override NoteHead.color = #clarinet-range
    \transposition sib
    \transpose do re {<< \global \relative do' {\clarinetIII} >>}
}

solo_oboe_staff = 
    \new Staff
        \with {
            instrumentName = "Oboé solo"
            shortInstrumentName = "Ob."
            midiInstrument = #"oboe"
        }
        \violinI

strings = 
    \new StaffGroup {
        <<
            \new GrandStaff {
                <<
                    \new Staff
                        \with {
                            instrumentName = "Violino I"
                            shortInstrumentName = "Vln. I"
                            midiInstrument = #"violin"
                        }
                        \violinI
                    \new Staff
                        \with {
                            instrumentName = "Violino II"
                            shortInstrumentName = "Vln. II"
                            midiInstrument = #"violin"
                        }
                        \violinII
                >>
            }

            \new GrandStaff {
                <<
                    \new Staff
                        \with {
                            instrumentName = "Viola I"
                            shortInstrumentName = "Vla. I"
                            midiInstrument = #"viola"
                        }
                        \violaI
                    \new Staff
                        \with {
                            instrumentName = "Viola II"
                            shortInstrumentName = "Vla. II"
                            midiInstrument = #"viola"
                        }
                        \violaII
                >>
            }

            \new Staff
                \with {
                        instrumentName = "Violoncelo"
                        shortInstrumentName = "Vcl."
                        midiInstrument = #"cello"
                    }
                    \cello
        >>
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
                \clarinetI

            \new Staff
                \with {
                    instrumentName = "Clarinete II"
                    shortInstrumentName = "Cl. II"
                    midiInstrument = #"clarinet"
                }
                \clarinetII
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
                \fluteI

            \new Staff
                \with {
                    instrumentName = "Flauta II"
                    shortInstrumentName = "Fl. II"
                    midiInstrument = #"flute"
                }
                \fluteII

            \new Staff
                \with {
                    instrumentName = "Flauta III"
                    shortInstrumentName = "Fl. III"
                    midiInstrument = #"flute"
                }
                \fluteIII
            
            %{
            \new Staff
                \with {
                    instrumentName = "Oboé"
                    shortInstrumentName = "Ob."
                    midiInstrument = #"oboe"
                }
                \oboe
            %}

            \new Staff
                \with {
                    instrumentName = "Clarinete III"
                    shortInstrumentName = "Cl. III"
                    midiInstrument = #"clarinet"
                }
                \clarinetIII
        >>
    }

\score {
    <<  
        \solo_oboe_staff
        \strings
        \clarinets_I_and_II
        \organ
    >>

    \layout{
        indent = 2\cm
        short-indent = 1\cm
    }
    \midi{ \tempo 8 = 68 }
}