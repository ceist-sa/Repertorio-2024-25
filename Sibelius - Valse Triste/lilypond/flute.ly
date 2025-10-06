\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"


flute = \relative do'' {
    \set Staff.midiInstrument = #"flute"
    \override NoteHead.color = #flute-range
    \clef treble

    R2. * 8 | %A
    R2. * 16 | %B
    R2. * 16 |%C
    R2. * 16 | %D
    R2. * 16 | %E

    si'2. ~ ( _\markup { \dynamic "mf" \italic "espress." }|
    si8 la) \grace { sol16( la )} sol8( fas8) sol( mi) |
    sol4.( res8) mi(sol) |
    \grace { fas16( sol)} fas2\> ( mi4) |
    re2.~ \mp\dim|
    re2.~ |
    re2.~ |
    re2\pp r4 |
    si'2.~( _\markup { \dynamic "mp" \italic "dolce" } |
    si8 la) \grace { sol16( la )} sol8( fas8) sol( mi) |
    sol4.( res8) mi(sol) |
    \grace { fas16( sol)} fas2\> ( mi4) |
    re2.~ \mp|
    re2.~ \dim|
    re2.~ |
    re2 \pp r4 |  %F
    si2.~\p \cresc |
    si2.~ |
    si2.~ |
    si2 do4->( |
    si2.\f )|
    si2 \f ~si8 r8 |
    R2. *4 |
    R2. *4 |
    R2. *4 | %G
    R2. *4 |
    R2. *4 |
    si'2.~( _\markup { \dynamic "mp" \italic "dolce" }|
    si8 la) \grace { sol16( la )} sol8( fas8) sol( mi) |
    sol4.( res8) mi(sol) |
    \grace { fas16( sol)} fas2\> ( mi4) |
    re2.~ \dim|
    re2.~ |
    re2.~ |
    re2 \pp r4 |
    si2.~\p \cresc |
    si2.~ |
    si2.~ |
    si2 do4->( |
    si2.\f )|
    si2.~ \f |
    si2\> ~si8\! r8 | %H
    R2. *4 |
    fa2. \mf ( |
    mi2. ) |
    res2.(
    mi2~) \>  mi8\! r8 |
    R2. *8 |
    sol2. \f( |
    fas!2.)( |
    fa2.~ \dim ) |
    fa2~ fa8 \! r8 |
    R2. *2 |

    do''8\f( re) do( re) do(re) |
    si2\> ( si8)\! r8 | %I
    R2. *6 |
    mib8\f( fa) mib( fa) mib( fa) |
    re2 re4| %K

    R2. *1 |
    r4 r4 \grace {mi!8 \( } fa4\)\ffz |
    r4 r4 \grace {re8 \( } mib4\)\ffz |
    r4 r4 \grace {dos8 \( } re4\)\ffz |
    R2. *1 |
    r4 r4 \grace {si!8 \( } do4\)\ffz |
    r4 r4 \grace {la!8 \( } sib4\)\ffz |
    r4 r4 \grace {sols!8 \( } la4\)\ffz | %L
    re,,2. ~\f |
    re2. |
    dos2. ~|
    dos2. |
    re2. ~\< |
    re2. ~ |
    re2. ~|
    re4 mi2-> |
    fa2.\f ~|
    fa2. |
    mi2.~|
    mi2.
    mib~\> |
    mib~|
    mib~|
    mib2~mib8\! r8 | %M
    mib2.~\f |
    mib |
    re2. ~\< |
    re2. ~ |
    re4\! dos2\> ~|
    dos2.\!~ |
    dos~ |
    dos2 ~ dos8 r8 |
    r4 r4 r4 |
    R2. * 8 |

}

flute_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Flauta"
        shortInstrumentName = "Fl."
    }
    << \flute \marks >>
}


\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        ragged-last-bottom = ##f
        ragged-bottom = ##f
    }
    \header {
        instrument = "Flauta"
        filename = "Sibelius - Valse Triste - FLAUTA"
    }
    \score {
        \new Staff
            <<\flute \marks>>
    }
}

