\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

first_violin = \relative do'' {
    \set Staff.midiInstrument = #"violin"
    \override NoteHead.color = #violin-range
    \clef treble

    % A
    R2. * 8 |
    fas,2.\express_\markup{\dynamic p \italic dolce}\consord ( |
    mis) |
    fas\< ( ~ |
    2 sols4\!) |
    la2. ( |
    sols\>) |
    sol! ~ |
    2. |
    sol\! |
    fas ~|
    4 mi2 (~ |
    2 re4) |
    re2. |
    re |
    re ~|
    2 r4 |

    % B
    sol2. ( |
    fas ) |
    sol\< (~ |
    2 la4\! ) |
    sib2. ( |
    la ) |
    lab2.\> ~ |
    2. |
    lab\! |
    sol ~ |
    4 fa2 (~ |
    2 mib4) |
    mib2. |
    mib |
    mib\< ~ |
    4\> re2\!^> |

    % C
    re4-.\pp\spitze 4-. r8 8 |
    4-. 4-. 4-. |
    re4-. 4-. r8 8 |
    4-. 4-. 4-. |
    re-. mi-. fas-. |
    sol-. fas-. mi-. |
    fas-. mi-. fas-. |
    re2 re4-. |
    4-. 4-. r8 8 |
    4-. 4-. mi-. |
    fas-. fas-. r8 fas8 |
    fas4-. fas-. fas-. |
    fas-. fas-. r8 fas8 |
    fas4-. fas-. fas-. |
    fas-.\< fas-. r8 fas8\! |
    fas4\> mi-- re--\! |
    
    % D
    re4-._\markup{\italic più \dynamic pp} 4-. r8 8 |
    4-. 4-. 4-. |
    re4-. 4-. r8 8 |
    4-. 4-. 4-. |
    re-. mi-. fas-. |
    sol-. fas-. mi-. |
    fas-. mi-. fas-. |
    re2 re4 |
    4\< 4 r8 8 |
    4 4\! mi |
    fa-. mi-- r8 mi8\dim |
    mi4-. mib-- r8 mib8 |
    re4\p re r8 re8\< |
    mi4( sol fas)\! |
    \once \override Hairpin.to-barline = ##f
    sol2.\> ~|
    2\! r4 |
    
    % E
    \acciaccatura re'8 si'2. (~ |
    8 la) sol(\( fas) sol( mi)\) |
    sol4.(\( res8) mi( sol)\) |
    fas2(\> mi4)\! |
    re2.\mp\dim ~ |
    re2. ~ |
    re ~ |
    re2\pp r4 |
    R2. * 2 |
    do8\pp\pizz si sib la lab sol |
    fas fas sol sols la las |
    si4 r4 r4 |
    R2. |
    r4 r re,4\p\arco\<( |
    re'2 do4) |

    % F
    si4.\arco\p \cresc las8 si4 |
    dos4. si8 dos4 |
    res4. dos8 res4 |
    mi2 (fas4) |
    sol2.\f-- |
    fas\f-- |
    fa \dim-> ~ |
    2. ~|
    2. ~|
    2\pp ~ 8 r8 |
    % caesura
    fa,2.\mp |
    mi2. ~ |
    4 re2 ~ |
    2 r8. \caesura dos16 |
    dos2. \ppp |
    dos
    dos\> ~ |
    dos2 r4\! |
    
    % G
    fas2._\markup{\dynamic p \italic dolce} ( |
    mis) |
    fas\< ( ~|
    2 sols4\!) |
    la2. ( |
    \once \override Hairpin.to-barline = ##f
    sols\>) |
    sol! ~|
    2\! r4 |
    R2. * 2 |
    do8\pp\pizz si sib la lab sol |
    fas fas sol sols la las |
    si4 r4 r4 |
    R2. |
    r4 r re,4\p\arco\<( |
    re'2 do4) |
    si4.\arco\p \cresc las8 si4 |
    dos4. si8 dos4 |
    res4. dos8 res4 |
    mi2 (fas4) |
    sol2.\f |
    fas\f |
    mi2\> ~ mi8 r8\> |

    % H 
    mi4\f-! fa-! sol-! |
    la-! sol-! fa-! |
    mi-! fas( r8 re) |
    sol2\>( sol8) r\! | 
    fa2. |
    mi |
    res |
    mi2\> ~ mi8 r\! |
    mi4\f-! fa-! sol-! |
    la-! sol-! fa-! |
    mi-! fas( r8 re) |
    sol2\>( sol8) r\! | 
    la2.\< |
    si |
    dos |
    res |
    mi\f |
    res-> |
    re-> |
    dos-> |
    do!4 do \tuplet 3/2 { do8( re do) } |
    si2 si4 |
    do!8( re) do8( re) do8( re) |
    si2 si8( sol') |

    % I
    sol2.->^\markup{\italic vibrato} |
    fas-> |
    fa-> |
    mi-> |
    mib4 mib \tuplet 3/2 { mib8( fa mib) } |
    re2 re4 |
    mib8( fa) mib8( fa) mib8( fa) |
    re2 re4 |

    % K
    <<{
        r4 sol8\ff 8 8 8 |
        sol4\> (fa)\! fa |
        fas\> (mib)\! mib |
        mib\> (re)\! re |
        r4 re8 8 8 8 |
        re4 (do) do |
        do (sib) sib |
        sib (la!) la8 r8 |
    }
    {
        r4 sol8\ff 8 8 8 |
        sol4\> (fa)\! fa |
        fas\> (mib)\! mib |
        mib\> (re)\! re |
        r4 re8 8 8 8 |
        re4 (do) do |
        do (sib) sib |
        sib (la!) la8 r8 |
    }>>

    % L 
    re,2.\f^\markup{\italic espress.} ~ |
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
    r4 r\fermata r8. dos16_\markup{\right-align \italic meno \dynamic f} |
    re2. |
    re2. |
    re2.\> ~ |
    re4 r\! r

    <<{
        \voiceOne
        sol'2.\pp\>^"2 soli" |
        fas\> |
        sol\> ~ |
        sol2
    }
    \new Voice {
        \voiceTwo
        re2. |
        mib |
        re ~ |
        re2
    }>> \oneVoice r4\! |
}

first_violin_conductor = \relative do'' {
    \new Staff \with {
        instrumentName = "Violino I"
        shortInstrumentName = "Vln. I"
        midiInstrument = #"violin"
    } 
    << \first_violin \marks >>
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = "Violino I"
        filename = "Sibelius - Valse Triste - VIOLINO I"
    }
    \score {
        \new Staff <<\first_violin \marks>>
    }
}