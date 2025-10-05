\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"


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

    % F
    si4.\p \cresc las8 si4 |
    dos4. si8 dos4 |
    res4. dos8 res4 |
    mi2 (fas4) |
    sol2.\f-- |
    fas\f-- |
    fa->_\markup{\italic "dim. molto"} ~ |
    2. ~|
    R2. * 10 |

    % G
    R2. * 16 |
    si4.,\p \cresc las8 si4 |
    dos4. si8 dos4 |
    res4. dos8 res4 |
    mi2 (fas4) |
    sol2.\f |
    fas\f |
    mi2\> ~ mi8 r8\> |

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
    R2 * 9|
}

first_oboe_conductor = \relative do'' {
    \new Staff \with {
        instrumentName = "Oboe I"
        shortInstrumentName = "Ob. I"
    }
    << \first_oboe \marks >>
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        ragged-last-bottom = ##f
        ragged-bottom = ##f
    }
    \header {
        instrument = "Oboe I"
        filename = "Sibelius - Valse Triste - OBOE I"
    }
    \score {
        \new Staff <<\first_oboe \marks>>
    }
}