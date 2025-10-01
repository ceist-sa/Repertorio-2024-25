\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

clarinet_in_Bb = \relative do''' {
    \set Staff.midiInstrument = #"clarinet"
    \clef treble
    
    R2. * 8 |
    % A
    R2. * 16 |
    % B
    R2. * 16 |
    % C
    R2. * 16 |
    % D
    R2. * 16 |
    % E
    R2. * 4 |
    si2.\mf^\markup{\italic espress.} ~ |
    si4\< la8( si) la( si) |
    re4.\>( res,8) mi( sol) |
    fas4\!( \grace { mi16\( fas\) } mi4 re) |
    R2. * 4 |
    si'2._\markup{\dynamic mp \italic dolce} ~ |
    si4\< la8( si) la( sol) |
    do4.\>( res,8) mi( sol) |
    fas4\!( \grace { mi16\( fas\) } mi4) re-. |
    % F
    sol2.\p\cresc ~ |
    sol |
    si,( |
    mi) ~ |
    mi\f |
    res2\f ~ 8 r |
    R2. * 12 |
    % G
    R2. * 12 |
    si'2._\markup{\dynamic mp \italic dolce} ~ |
    si4\< la8( si) la( sol) |
    do4.\>( res,8) mi( sol) |
    fas4\! \grace { mi16\( fas\) } mi4 re-. |
    sol2.\p\cresc ~ |
    sol |
    si,( |
    mi) ~ |
    mi\f |
    res( |
    mi2)\> ~ 8 r\! |
    % H
    mi,4\f( fas sol |
    la sol fas |
    mi fas) r8 re |
    sol2\> ~ 8 r\! |
    R2. * 4 |
    mi4\f( fas sol |
    la sol fas |
    mi fas) r8 re |
    sol2\> ~ 8 r\! |
    R2. * 4 |
    mi'2.(\f |
    res)( |
    re!)( |
    dos)( |
    do!)( |
    si) ~ |
    si\dim ~ |
    si2\p ~ 8 r |
    % I / J
    sol2.\piuf( |
    fas2.)( |
    fa!2.)( |
    mi)( |
    mib)( |
    re) ~ |
    re\dim ~ |
    re2\p ~ 8 r |
    R2. |
    r4 r \acciaccatura { mi''8 } fa4\ffz |
    r r \acciaccatura { re8 } mib4\ffz |
    r r \acciaccatura { dos8 } re4\fz |
    R2. |
    r4 r \acciaccatura { si!8 } do!4\fz |
    r r \acciaccatura { la8 } sib4\fz |
    r r \acciaccatura { sols8 } la4\fz |
    re,,2.\f ~ |
    re |
    do! ~ |
    do |
    re\< ~ |
    re ~ |
    re ~ |
    re4\! mi2-> |
    fa2.\f ~ |
    fa |
    mi ~ |
    mi |
    mib ~ |
    mib ~ |
    mib ~ |
    mib2 ~ 8 r |
    mib2.\f ~ |
    mib |
    re\< ~ |
    re ~ |
    re4\!\> dos2\! ~ |
    dos2. ~ |
    dos ~ |
    dos2 ~ 8 r |
    r4 r4\fermata r8. do16_\markup{\right-align \italic meno \dynamic f} |
    re2.\< |
    mi!4( sol! fas!) |
    sol!2.\> ~ |
    4 r4\! r4 |
    R2. * 4 |
}


first_clarinet_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Clarinete em Si♭ I"
        shortInstrumentName = "Cl. I"
    }
    \transpose do re << \clarinet_in_Bb \marks >>
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        page-count = #1
        ragged-last-bottom = ##f
        ragged-bottom = ##f
    }
    \header {
        instrument = "Clarinete em Si♭ I"
        filename = "Sibelius - Valse Triste - CLARINET I"
    }
    \score {
        \new Staff
        \transpose do re <<\clarinet_in_Bb \marks>>
    }
}