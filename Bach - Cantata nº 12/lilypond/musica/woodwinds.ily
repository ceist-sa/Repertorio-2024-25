\version "2.24.4"
\language "portugues"
\include "../globals.ily"
\include "../../../ranges.ily"

\parallelMusic fluteI, fluteII, fluteIII, oboe, clarinetIII {
    \key_time_tempo
    \clef treble
    
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

    \bar "|."
}

fluteI = \relative do' {
    \set Staff.midiInstrument = #"flute"
    \override NoteHead.color = #flute-range
    \fluteI
}
fluteII = \relative do' {
    \set Staff.midiInstrument = #"flute"
    \override NoteHead.color = #flute-range
    \fluteII
}
fluteIII = \relative do' {
    \set Staff.midiInstrument = #"flute"
    \override NoteHead.color = #flute-range
    \fluteIII
}
oboe = \relative do' {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \oboe
}
clarinetIII = \relative do' {
    \set Staff.midiInstrument = #"clarinet"
    \override NoteHead.color = #clarinet-range
    \clarinetIII
}