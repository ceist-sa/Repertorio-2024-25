\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

viola = \relative do'{
    \set Staff.midiInstrument = #"viola"
    \override NoteHead.color = #viola-range
    \clef alto
    R2. * 2_\consord |
    r4 <<si fas\pizz\p>> r |
    r <<si fas>> r |
    r <<si fas\pp>> r |
    r <<si fas>> r |
    r <<si fas\arco\p>> <<si fas>> |
    r <<si fas>> <<si fas>> |
    r si si |
    r si si |
    r dos si |
    r dos si |
    r dos dos |
    r si si |
    r si si |
    r si si |
    r si si |
    r la la |
    r sol sol |
    r sol sol |
    r sol sol |
    r la la |
    r sol sol |
    r sol sol |

    % B
    r do do |
    r do do |
    r re do |
    r re do |
    r re re |
    r do do |
    r do do |
    r do do |
    r do do |
    r sib sib |
    r lab lab |
    r lab lab |
    r lab lab |
    r sib sib |
    r lab\< lab |
    r\> la! la |

    % C
    sol-.\pp sol-. r8 sol |
    sol4-. sol-. sol-. |
    fas-. fas-. r8 fas |
    fas4-. fas-. fas-. |
    sol-. sol-. sol-. |
    sol-. sol-. sol-. |
    re-. re-. re-. |
    r fas-. fas-. |
    sol-. sol-. r8 sol |
    sol4-. sol-. sol-. |
    si-. si-. r8 si |
    si4-. si-. si-. |
    las-. las-. r8 las |
    las4-. las-. las-. |
    si-.\< si-. r8 si |
    fas2.\> |

    % D
    sol4-.\!\piupp sol-. r8 sol |
    sol4-. sol-. sol-. |
    fas-. fas-. r8 fas |
    fas4-. fas-. fas-. |
    sol-. sol-. sol-. |
    sol-. sol-. sol-. |
    re-. re-. re-. |
    r fas-. fas-. |
    sol-. sol-.\< r8 sol |
    sol4-. sol-. sol-.\! |
    si-. si-- r8 si\dim |
    la4-. la-- r8 la |
    re,4\p sol\< r8 sol |
    r4 <<la re>> <<la re>> |
    r\!_\markup{\dynamic mp \italic deciso} <<sol, re'>> <<sol, re'>> |
    r <<sol, re'>> <<sol, re'>> |

    % E
    r <<sol, re'>> <<sol, re'>> |
    r <<sol, re'>> <<sol, re'>> |
    r r re\mp\<( |
    re'2 do4) |
    si2.\mf\< ~ |
    si4( la8\( si\) la\( sol\)) |
    do4.(\(\! res,8\)\> mi\( sol\)) |
    fas4( \grace{ mi16 fas } mi4 re)\! |
    \repeat tremolo 3 { re8\p( re, } |
    \repeat tremolo 3 { re'8 re,) } |
    \repeat tremolo 3 { re'8( re, } |
    \repeat tremolo 3 { re'8 re,) } |
    \repeat tremolo 3 { re'8( re, } |
    \repeat tremolo 3 { re'8 re,) } |
    \repeat tremolo 3 { re'8( re, } |
    \repeat tremolo 3 { re'8 re,) } |

    % F
    r4 <<sol re'\p>> <<sol, re'\cresc>> |
    r <<si sol'>> <<si, sol'>> |
    r <<si, la'>> <<si, la'>> |
    r <<mi si'>> <<mi, do'>> |
    r <<si, sol'\f>> <<si, sol'>> |
    r <<si, fas'\f>> <<si, fas'>> |
    r <<la, la'_\markup { \italic { dim. molto } }>> <<la, la'>> |
    r <<la, la'>> <<la, la'>> |
    r <<la, la'>> <<la, la'>> |
    r <<la, la'\pp>> <<la, la'>> |
    r la, la |
    r sol sol |
    r fa fa |
    r fa fa |
    r fas!\ppp fas |
    r sols sols |
    r fas! fas |
    r fas fas |

    % G
    r si\p si |
    r si si |
    r dos si |
    r dos si |
    r dos dos |
    r si si |
    r si si |
    r si si |
    \repeat tremolo 3 { re8(\p re, } |
    \repeat tremolo 3 { re'8 re,) } |
    \repeat tremolo 3 { re'8( re, } |
    \repeat tremolo 3 { re'8 re,) } |
    \repeat tremolo 3 { re'8( re, } |
    \repeat tremolo 3 { re'8 re,) } |
    \repeat tremolo 3 { re'8( re, } |
    \repeat tremolo 3 { re'8 re,) } |
    r4 <<sol re'\p\cresc>> <<sol, re'>> |
    r <<si sol'>> <<si, sol'>> |
    r <<si, la'>> <<si, la'>> |
    r <<mi si'>> <<mi, do'>> |
    r <<si, sol'\f>> <<si, sol'>> |
    r <<si, fas'\f>> <<si, fas'>> |
    r\> <<sol, mi'>> <<sol, mi'>> |

    % H
    mi-!\f fas-! sol-! |
    la-! sol-! fas-! |
    mi-! fas( r8 re) |
    sol2\> ~ sol8 r\! |
    fa2. |
    mi |
    res |
    mi2\> ~ mi8\! r8 |
    mi4\f-! fas!-! sol-! |
    la-! sol-! fas-! |
    mi-! fas( r8 re) |
    sol2 ~ sol8 r |
    la2.\< |
    si |
    dos |
    res |
    mi\f |
    res-> |
    re!-> |
    dos-> |
    do!4 do \tuplet 3/2 { do8( re do) } |
    si2 si4 |
    do8\f( re) do8( re) do8( re) |
    si2\< si8( sol') |

    % I / J
    sol2.->\!\piuf^\markup{\italic vibrato} |
    fas-> |
    fa-> |
    mi-> |
    mib4 mib \tuplet 3/2 { mib8( fa mib) } |
    re2 re4 |
    mib8( fa) mib8( fa) mib8( fa) |
    re2 re4 |

    % K
    r <<si,!8\!\ff si'!>> <<si, si'>> <<si, si'>> <<si, si'>> |
    r4 <<la, la'>> <<la, la'>> |
    r <<sol, sol'>> <<sol, sol'>> |
    r <<la, fas'!>> <<la, fas'>> |
    r <<la,8 fas'!>> <<la, fas'>> <<la, fas'>> <<la, fas'>> |
    r4 <<sol, mi'>> <<sol, mi'>> |
    r <<fa, re'>> <<fa, re'>> |
    r <<mi, dos'>> <<mi,8 dos'>> r |

    % L
    \startMeasureCount
    sol\f 4 4 8 ~ |
    \repeat unfold 15 {8 4 4 8 ~ |}
    \stopMeasureCount

    % M
    \startMeasureCount
    \repeat unfold 7 {8 4 4 8 ~ |}
    8 4 4 r8 |
    \stopMeasureCount
    r4 r\fermata r |
    r sol\mf sol |
    r la la |
    r sol sol |
    R2. * 5 |
}

viola_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Viola"
        shortInstrumentName = "Vla."
    }
    << \viola \marks >>
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        ragged-last-bottom = ##f
        ragged-bottom = ##f
    }
    \header {
        instrument = "Viola"
        filename = "Sibelius - Valse Triste - VIOLA"
    }
    \score {
        \layout {
            \context {
                \Staff
                \consists Measure_counter_engraver
            }
        }
        \new Staff <<\viola \marks>>
    }
}