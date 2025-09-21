\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

second_violin = \relative do' {
    \set Staff.midiInstrument = #"violin"
    \override NoteHead.color = #violin-range
    \clef treble

    % A
    R2. * 2_\consord |
    r4 <<mi si\pizz\p>> r |
    r <<re si>> r |
    r <<mi si\pp>> r |
    r <<re si>> r |
    r mi\arco\p re |
    r mi re |
    r mi re |
    r re dos |
    r mi! re |
    r mi re |
    r fas mi |
    r fas mi |
    r fas mi |
    r fas mi |
    r fas mi |
    r re! do! |
    r do si |
    r do si |
    r si si |
    r do do |
    r si si |
    r si si |

    % B
    r fa' mib |
    r mib re |
    r fa mib |
    r fa mib |
    r sol fa |
    r sol fa |
    r sol fa |
    r sol fa |
    r sol fa |
    r mib reb |
    r reb do |
    r reb do |
    r do do |
    r reb reb |
    r\< do do |
    r\> do do |

    % C
    si!-.\!\pp si-. r8 si |
    si4-. si-. si-. |
    do-. do-. r8 do |
    do4-. do-. do-. |
    si-. si-. si-. |
    si-. si-. si-. |
    do-. do-. do-. |
    r do-. do-. |
    si-. si-. r8 si |
    si4-. si-. si-. |
    re-. re-. r8 re |
    re4-. re-. re-. |
    mi-. mi-. r8 mi |
    mi4-. mi-. mi-. |
    re-. re-.\< r8 re |
    do!2.\> |

    % D
    si4-.\!_\markup{\italic più \dynamic pp} si-. r8 si |
    si4-. si-. si-. |
    do-. do-. r8 do |
    do4-. do-. do-. |
    si-. si-. si-. |
    si-. si-. si-. |
    do-. do-. do-. |
    r do-. do-. |
    si-.\< si-. r8 si |
    si4-. si-. si-. |
    re-.\! re-- r8 re8\dim |
    do4-. do-- r8 do8\p |
    si4\< si r8 si8 |
    r4 <<do re>> <<do re>> |
    r\! <<si re_\markup{\dynamic mp \italic deciso}>> <<si re>> |
    r <<si re>> <<si re>> |

    % E
    r <<si re>> <<si re>> |
    r <<sol, re'>> <<sol, re'>> |
    r <<do re>> <<do re>> |
    r <<do re>> <<do re>> |
    r <<si re>> <<si re>> |
    r <<sol, re'>> <<sol, re'>> |
    r <<do re>> <<do re>> |
    r <<do re>> <<do re>> |
    r <<si re>> <<si re>> |
    r <<sol, re'>> <<sol, re'>> |
    r <<do re>> <<do re>> |
    r <<do re>> <<do re>> |
    r <<si re>> <<si re>> |
    r <<sol, re'>> <<sol, re'>> |
    r <<do re>> <<do re>> |
    r <<do re>> <<do re>> |

    % F
    r <<sol sol,\p\cresc>> <<sol' sol,>> |
    r <<si' sol>> <<si sol>> |
    r <<la sol>> <<la sol>> |
    r <<si sol>> <<do la>> |
    r <<si mi,\f>> <<si' mi,>> |
    r <<si' res,\f>> <<si' res,>> |
    r <<la' re,!_\markup{\italic "dim. molto"}>> <<la' re,>> |
    r <<la' re,>> <<la' re,>> |
    r <<la' re,>> <<la' re,>> |
    r <<la' re,\pp>> <<la' re,>> |
    r re\mp re |
    r do! sib |
    r sib la |
    r la la |
    r la\ppp la |
    r si! si |
    r la la |
    r la la |

    % G
    r mi'!\p re |
    r re dos |
    r mi re |
    r mi re |
    r fas mi |
    r fas mi |
    r fas mi |
    r fas mi |
    r <<re si\p>> <<re si>> |
    r <<re sol,>> <<re' sol,>> |
    r <<do re>> <<do re>> |
    r <<do re>> <<do re>> |
    r <<si re>> <<si re>> |
    r <<re sol,>> <<re' sol,>> |
    r <<do re>> <<do re>> |
    r <<do re>> <<do re>> |
    r <<sol sol,\p\cresc>> <<sol' sol,>> |
    r <<si' sol>> <<si sol>> |
    r <<la sol>> <<la sol>> |
    r <<si sol>> <<do la>> |
    r <<si mi,\f>> <<si' mi,>> |
    r <<si' res,\f>> <<si' res,>> |
    r <<si' mi,\>>> <<si' mi,>> |

    % H
    R2.\! |
    r4 <<do la'\pizz\f>> <<do, la'>> |
    r <<re, la'>> <<re, la'>> |
    r <<re, si'>> <<re, si'>> |
    r <<do, la'>> <<do, la'>> |
    r <<si, sol'>> <<si, sol'>> |
    r <<si, la'>> <<si, la'>> |
    r <<si, sol'>> <<si, sol'>> |
    r <<si, sol'>> <<si, sol'>> |
    r <<do, la'>> <<do, la'>> |
    r <<re, la'>> <<re, la'>> |
    r <<re, si'>> <<re, si'>> |
    r <<do, fas! la>> <<do, fas la>> |
    r <<si, sol' si\<>> <<si, sol' si>> |
    r <<las, sol' dos>> <<las, sol' dos>> |
    r <<la,! fas' res'>> <<la, fas' res'>> |
    r <<sol,, mi' mi'\f>> <<sol,, mi' mi'>> |
    r <<si, fas' res'>> <<si, fas' res'>> |
    r <<si, sol' re'!>> <<si, sol' re'>> |
    r <<dos, mis dos'>> <<dos, mis dos'>> |
    r <<do,! mi! do'!>> <<do, mi do'>> |
    r <<si, res si'>> <<si, res si'>> |
    r <<do, mi do'>> <<do, mi do'>> |
    r <<si, res si'>> <<si, res si'>> |

    % I
    r_\markup{\italic più \dynamic f} <<sol, mib' do' sol'>> <<sol,, mib' do' sol'>> |
    r <<re, la' fas'>> <<re, la' fas'>> |
    r <<re, sib' fa'>> <<re, sib' fa'>> |
    r <<si,,! sols' re' mi>> <<si, sols' re' mi>> |
    r <<sol,, mib' mib'>> <<sol,, mib' mib'>> |
    r <<la,, fas'! re'>> <<la, fas' re'>> |

    % K
    r <<sol,, mib' mib'>> <<sol,, mib' mib'>> |
    r <<la,, fas' re'>> <<la, fas' re'>> |
    r <<fa,8 fa'\ff\arco>> <<fa, fa'>> <<fa, fa'>> <<fa, fa'>> |
    r4 <<mib, mib'>> <<mib, mib'>> |
    r <<reb, reb'>> <<reb, reb'>> |
    r <<do, do'>> <<do, do'>> |

    % L
    r <<re,8 do'>> <<re, do'>> <<re, do'>> <<re, do'>> |
    r4 <<do, sib'>> <<do, sib'>> |
    r <<sib, lab'>> <<sib, lab'>> |
    r <<la,! sol'>> <<la,8 sol'>> r |
    \startMeasureCount
    sib,\f 4 4 8 ~ |
    \repeat unfold 15 {8 4 4 8 ~ |}
    \stopMeasureCount

    % M
    \startMeasureCount
    \repeat unfold 7 {8 4 4 8 ~ |}
    8 4 4 r8 |
    \stopMeasureCount
    r4 r\fermata r |
    r sib\mf sib |
    r do do |
    r sib sib |
    R2. |
    <<{
        \voiceOne
        sib'\pp\>^"2 soli" |
        do\> |
        sib\> ~ |
        sib2
    }
    \new Voice {
        \voiceTwo
        sol2. ~ |
        sol |
        sol ~ |
        sol2
    }>> \oneVoice r4\! |
}

second_violin_conductor = \relative do'' {
    \new Staff \with {
        instrumentName = "Violino II"
        shortInstrumentName = "Vln. II"
    }
    << \second_violin \marks >>
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = "Violino II"
        filename = "Sibelius - Valse Triste - VIOLINO II"
    }
    \score {
        \layout {
            \context {
                \Staff
                \consists Measure_counter_engraver
            }
        }
        \new Staff <<\second_violin \marks>>
    }
}