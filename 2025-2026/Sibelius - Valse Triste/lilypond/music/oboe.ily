\version "2.24.4"
\language "portugues"
\include "../../../../styles/ranges.ily"
\include "../globals.ily"

conductor_marks = {
    s2. * 8 | %A
    s2. * 16 | %B
    s2. * 16 |%C
    s2. * 16 | %D
    s2. * 16 | %E
    s2. * 16 | %F

    % F
    s4.^\markup \bold "Ob. II"_\markup \bold "Ob. I" s4. |
    s2. * 17

    % G
    s2. * 16 |
    s4.^\markup \bold "Ob. II"_\markup \bold "Ob. I" s4. |
    s2. * 6 |
}

first_oboe = \relative do'' {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \clef treble

    R2. * 8 | %A
    R2. * 16 | %B
    R2. * 16 |%C
    R2. * 16 | %D
    R2. * 16 | %E

    \acciaccatura re8 si'2. (~ |
    8 la) sol(\( fas) sol( mi)\) |
    sol4.(\( res8) mi( sol)\) |
    fas2(\> mi4)\! |
    si2.\mf\< ~ |
    si4( la8\( si\) la\( sol\)) |
    do4.(\(\! res,8\)\> mi\( sol\)) |
    fas4( \grace{ mi16 fas } mi4 re)\! |
    R2. * 8 |

    \partCombineChords
    % F
    si4.\p \cresc las8 si4 |
    dos4. si8 dos4 |
    res4. dos8 res4 |
    mi2 (fas4) |
    sol2.\f-- |
    fas\f-- |
    fa-> \dimmolto ~ |
    2. |
    R2. * 10 |

    % G
    R2. * 16 |
    si,4.\p \cresc las8 si4 |
    dos4. si8 dos4 |
    res4. dos8 res4 |
    mi2 (fas4) |
    sol2.\f |
    fas\f |
    mi2\> ~ mi8 r8 |

    \partCombineUnisono
    % H
    mi4-!\f fas-! sol-! |
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

    r4 sol8\ff 8 8 8 |
    sol4\> (fa)\! fa |
    fas\> (mib)\! mib |
    mib\> (re)\! re |
    r4 re8 8 8 8 |
    re4 (do) do |
    do (sib) sib |
    sib (la!) la8 r8 |


    % L
    re,2._\markup{\dynamic f \italic espress.} ~ |
    re |
    dos ~ |
    dos |
    re ~ |
    re\< ~ |
    re ~ |
    re4\! mi2\> |
    fa2.\!\f ~ |
    fa |
    mi ~ |
    mi |
    mib\> ~ |
    mib ~ |
    mib ~ |
    mib2 ~ mib8\! r8 |

    % M
    mib2.\f ~ |
    mib |
    re\< ~ |
    re ~ |
    re4\> dos2\! ~ |
    dos2. ~ |
    dos2. ~ |
    dos2 ~ dos8 r8 |
    r4 r\fermata r |
    R2. * 8 |
}

second_oboe = \relative do'' {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \clef treble

    R2. * 8 | %A
    R2. * 16 | %B
    R2. * 16 |%C
    R2. * 16 | %D
    R2. * 16 | %E
    R2. * 16 | %F

    % F
    si4.\p \cresc las8 si4 |
    dos4. si8 dos4 |
    res4. dos8 res4 |
    mi2 (fas4) |
    sol2.\f-- |
    fas\f-- |
    fa->\dimmolto ~ |
    2. |
    R2. * 10 |

    % G
    R2. * 16 |
    si,4.\p \cresc las8 si4 |
    dos4. si8 dos4 |
    res4. dos8 res4 |
    mi2 (fas4) |
    sol2.\f |
    fas\f |
    mi2\> ~ mi8 r8 |

    % H
    mi,4-!\f fas-! sol-! |
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

    r4 sol8\ff 8 8 8 |
    sol4\> (fa)\! fa |
    fas\> (mib)\! mib |
    mib\> (re)\! re |
    r4 re8 8 8 8 |
    re4 (do) do |
    do (sib) sib |
    sib (la!) la8 r8 |


    % L
    re,2._\markup{\dynamic f \italic espress.} ~ |
    re |
    dos ~ |
    dos |
    re ~ |
    re\< ~ |
    re ~ |
    re4\! mi2\> |
    fa2.\!\f ~ |
    fa |
    mi ~ |
    mi |
    mib\> ~ |
    mib ~ |
    mib ~ |
    mib2 ~ mib8\! r8 |

    % M
    mib2.\f ~ |
    mib |
    re\< ~ |
    re ~ |
    re4\> dos2\! ~ |
    dos2. ~ |
    dos2. ~ |
    dos2 ~ dos8 r8 |
    r4 r\fermata r |
    R2. * 8 |
}

oboes_conductor = {
    \new Staff \with {
        instrumentName = "2 Oboés"
        shortInstrumentName = "Ob."
        soloText = #"Ob. I"
        soloIIText = #"Ob. II"
    }
    << \partCombine \first_oboe \second_oboe \marks \conductor_marks>>
}

first_oboe_part = \score {
    \new Staff <<\first_oboe \marks>>
}

second_oboe_part = \score {
    \new Staff <<\second_oboe \marks>>
}