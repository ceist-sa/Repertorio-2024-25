\version "2.24.4"

\include "../instrument_names.ily"
\include "../globals.ily"
\include "globals.ily"
\include "../hairpin.ily"

\language "português"

notes = \relative sol,{
    \set Staff.midiInstrument = #"cello"
    \clef bass
    \key sol \major
    sol1 ~ |
    sol ~ |
    sol ~ |
    sol2. sol'4-> |
    fas2-> mi-> |
    fas2.-> si4-> |
    la2-> la,->|
    % A
    s1
    s1 * 10
    %repeat bar
    s1 * 8
    mi'4-> mi'-> re-> re,->|
    re4-> re'-> do-> do,->|
    do4-> ~8 r8 r4 r8 do8->-. |
    %B
    si8-.-> r8 r4 r2 |
    R1*4
    r8 si'\pizz \twoCelliSoli la sol fas mi re do |
    si4 r4 r2 |
    r8 si do re mi fas sol la |
    si4 r4 r2 |
    R1 |
    s1*2
    %C
    s1*4
    \rthm mi,->  \rthm mi \rthm re-> \rthm re |
    \rthm do-> \rthm do \rthm do \rthm do'-> |
    \rthm si-> \rthm si \rthm la-> \rthm la |
    sol2.-> sol'4-> |
    fas2.-> fas,4-> |
    mi4-> mi'-> re-> re,-> |
    do-> do'-> si-> si,-> |
    la-> la'-> si,-> do-> |
    re1-> |
    % D
    s1
    s1*8
    %E
    s4 sol'4-. re4-. si-. |
    sol4-. re-. si-. sol-. |
    fa1->\startTrillSpan |
    \afterGrace fa1( {mi16 fa)} |
    mi4->\stopTrillSpan mi'-> re-> do-> |
    si4-> fa'-> mi-> re-> |
    do4-> do'-> si-> mi-> |
    re2-> re,-> |
    <<{sol1\fermata\div} \\ {\arpeggioBracket <re sol,>1 \fermata \arpeggio} >> |
}

notesI = \relative re {
    s1 * 7
    % A
    re2. la'4 ( |
    fas'1-> |
    mi) |
    mi->( |
    re) |
    re2-> ( dos) |
    dos->( si) |
    si1( |
    la2 sol) |
    fas4-. re'-. la-. fas-. |
    re-. la-. fas-. re-. |
    % repeat bar
    re'2-> ~ 4 r4 |
    r2 r4 r8 re8-. |
    re2. (mi4) |
    fas4 (sol la si) |
    si,2-> ~ 4 r4 |
    r2 r4 r8 si8-. |
    si2. (dos4) |
    res ( mi fas sol ) |
    s1*3
    %B
    s1*10
    r4 << {do2\arco\tutti do4} \\ {sol2 sol4} >>|
    << {do4 ~8} \\ {fas,4 ~8} >> r8 r4 \tuplet 6/4 {fas16-> (mi re do si la)} |
    %C
    <<
        {s4 \rthm sol'->\nondiv \rthm la-> \rthm si-> |
        \rthm do-> \rthm re-> \rthm do-> \rthm si-> |
        \rthm la-> \rthm la \rthm fas->  \rthm fas |
        \rthm sol-> \rthm sol \rthm sol \rthm fa |}
        {\repeat unfold 15 {\rthm sol,}}
    >>
    s1*9
    %D
    sol2. re'4 ( |
    si'1-> |
    la1 ) |
    la1-> ( |
    sol ) |
    sol2-> (fas) |
    fas2-> (mi) |
    mi1 (|
    re2 do) |
    %E
    si4-. s2 s4 |
    s1*8
}

notesII = \relative re {
    s1 * 7
    % A
    re1 |
    R1 |
    r4 la'\pizz re, r |
    R1 |
    r4 la' re, r |
    r2 re4 r |
    r2 re4 r |
    r4 re r2 |
    r1 |
    r4 re'-.\arco la-. fas-. |
    re-. la-. fas-. re-. |
    % repeat bar
    fas2-> ~ 4 r4 |
    r2 r4 r8 re8-. |
    sol8-. \repeat unfold 7 {sol8-.} |
    \repeat unfold 8 {sol8-.} |
    res2-> ~ 4 r4 |
    r2 r4 r8 si'8-. |
    mi,8-. \repeat unfold 7 {mi8-.} |
    \repeat unfold 8 {mi8-.} |
    s1*3
    %B
    s1*10
    r4 << {mi'2\arco\tutti^"div. à 4." mi4} \\ {la,2 la4} >>|
    << {re4 ~8} \\ {la4 ~8} >> r8 r4 \tuplet 6/4 {fas'16-> (mi re do si la)} |
    %C
    \rthm sol-> \rthm si-> \rthm do-> \rthm re-> |
    \rthm mi-> \rthm fas-> \rthm mi-> \rthm re-> |
    \rthm do-> \rthm do \rthm la->  \rthm la |
    \rthm si-> \rthm si \rthm si \rthm fa' |
    s1*9
    %D
    sol1\p |
    R1 |
    r4 re4\pizz sol, r4 |
    R1 |
    r4 re'4 sol, r4 |
    r2 sol4 r4 |
    r2 sol4 r4 |
    r4 sol4-> r2 |
    R1 |
    %E
    r4 s4 \arco s2 |
    s1*8
}

dynamics = {
    s1 \ffp |
    s1 * 3 |
    s1 \cresc |
    s1 * 2 |
    %A
    s1 \fp
    s1 * 8 |
    s4 s4\crescmolto s2 |
    s2 s4 s4\fz |
    %repeat bar
    s1 * 2 |
    s1 \fp |
    s1 |
    s1 \f |
    s1 |
    s1 \fp |
    s1 |
    s1 \f |
    s1 * 2 |
    %B
    s1 * 5 |
    s8 s8 \pp s4 s2 |
    s1 * 4 |
    s4 s4 \f \< s2 |
    s1 \fz |
    %C
    s1 * 3 |
    s2 s4 s4_\markup{\italic sempre \dynamic ff} |
    s1 |
    s1 * 7 |
    s1 \> |
    %D
    s1 \p |
    s1 * 8 |
    s4 s4 \crescmolto s2 |
    s4 \< s4 s2 |
    s1 \! |
    \hairpinWithRightText \markup{\italic \tiny "molto"}
    % I don't have to understand this, someone did it for me
    %https://lsr.di.unimi.it/LSR/Snippet?id=947
    s1\< |
    s4 s4 \ff s2 |
    s1 * 3 |
    s1 \ffz |
}

dynamicsI = {
    s1 * 7 |
    s2 s4 s4\pp |
    s1 * 4 |
    s1 \piup |
    s1 * 3 |
    s4 \f s4 s2 |
    s1 |
    %repeat bar
    s1 * 36 |
    %D
    s2 s4 s4 \pp |
    s1 * 4 |
    s2 \piup s2 |
    s1 * 3 |
    s4 \f s4 s2 |
    s1 * 8 |
}

dynamicsII = {
    s1 * 9 |
    s4 s4 \p s2 |
    s1 * 2 |
    s2 s2\piup |
    s1 * 3 |
    s4 s4 \f s2 |
    s1 |
    %repeat bar
    s1 * 36 |
    %D
    s1 |
    s1 * 4 |
    s2 s4 \piup s4 |
    s1 * 3 |
    s4 s4 \f s2 |
    s1 * 8 |
}

staves = {
    \oneStaff
    s1 * 7 |
    \twoStaves
    s1 * 9 |
    \oneStaff
    s1 * 4 |
    \twoStaves
    s1 * 2 |
    \oneStaff
    s1 * 2 |
    \twoStaves
    s1 * 2 |
    \oneStaff
    s1 * 3 |
    %B
    s1 * 10 |
    \twoStaves |
    s1 * 2 |
    %C
    s1 * 4 |
    \oneStaff
    s1 * 9
    %D
    \twoStaves
    s1 * 9 |
    \oneStaff
    s1 * 9 |
}

cello = <<\notes << <<\notesI \dynamicsI>> \\ <<\notesII \dynamicsII>> >> \marks \dynamics >>

celloI = <<\notes \notesI \marks \dynamics \dynamicsI >>
celloII = <<\notes \notesII \marks \dynamics \dynamicsII >>

cello_staves = {
    <<
        \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \celloI \staves >>
        \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \celloII \staves >>
        \new Staff \with {
        \override VerticalAxisGroup.remove-layer = 2
        }
        << \cello \staves >>
    >>
}

cello_conductor = {
    \new GrandStaff \with {
        \consists "Keep_alive_together_engraver"
        instrumentName = \cello_name_long
        shortInstrumentName = \cello_name_short
    }
    \cello_staves
}

cello_praelude = \score {
    \header { piece = "I. Praelude" }
    \compressMMRests {
        \new GrandStaff \with {
            \consists "Keep_alive_together_engraver"
        }
        \cello_staves
    }
}

% \cello_praelude