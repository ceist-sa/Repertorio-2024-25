\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \set Staff.midiInstrument = #"clarinet"
    \override NoteHead.color = #clarinet-range
    \clef "treble"
    r4 |
    R1 * 7 |
    r2 r4 |
    % S
    r4 |
    R1 * 10 |
    % T
    R1 * 11 |
    % U
    R1 * 6 |
    r2 r4 re, \ff |
    sol4-> (fas8--) mi re do si la |
    sol8 la si2-> do4 |
    la4 si8 do re2->\< \fermata |
    sol4-.\!\ffz sol,-. sol-. |
    % Poco meno mosso
    r4 |
    sol'1\p ~ |
    2. sol4 |
    fa2 mib |
    re2. r4 |
    do2->\mf (la) |
    sib2->\> (sol) |
    fa2 (mib) |
    re2\pp r4 |
    % repeat bar
    r4 |
    sib''1\p ~ |
    2. sib4 |
    la2 sol |
    fa4 (mib) re\f (sib') |
    sib2-> sib-> |
    sib2.-> sib4 |
    sib4 do8 sib \grace{la16 (sib} la2->) |
    sib2 r2 |
    % V
    re,1\p ~|
    2. sol4 |
    fa2 mib |
    re2. r4 |
    mib4 mib (do) do( |
    re) re (sib) sib( |
    la) la (sol) sol( |
    la2) sib4-> sib( |
    la2) re4->\cresc re( |
    mib4->) mib (mi->) mi( |
    fas2->) sol->\ff |
    sol2-> sol-> |
    sol2.-> sol4 |
    sol4 la8 sol \grace{fas16 (sol} fas2)-> |
    sol2 s2 |
}

notesI = \relative la {
    \override NoteHead.color = #clarinet-range
    s4 |
    s1 * 7 |
    s2 s4 |
    % S
    s4 |
    s1 * 10 |
    % T
    s1 * 11 |
    % U
    s1 * 10 |
    s2 s4 |
    % Poco meno mosso
    s4 |
    s1 * 7 |
    s2 s4 |
    % repeat bar
    s4 |
    s1 * 8 |
    % V
    s1 * 14 |
    s2 re4\p^\markup{\italic "più tranquillo"}( sol) |
    re->( do) do( sib) |
    sib8( la) la2 do8 mib |
    re4 do8 sib \grace {la16\( sib} la4.->  sol8 \) |
    sol2 \fermata r4 |
}

notesII = \relative la {
    \override NoteHead.color = #clarinet-range
    s4 |
    s1 * 7 |
    s2 s4 |
    % S
    s4 |
    s1 * 10 |
    % T
    s1 * 11 |
    % U
    s1 * 10 |
    s2 s4 |
    % Poco meno mosso
    s4 |
    s1 * 7 |
    s2 s4 |
    % repeat bar
    s4 |
    s1 * 8 |
    % V
    s1 * 14 |
    s2 re4\p^\markup{\italic "più tranquillo"} (sib) | % compiler throws a warning here, but it seems fine
    sol4-> (sol') sol,4-> (sol') |
    sol,4-> (sol'2) do,4 |
    re4 do8 sib \grace{la16 _(sib} la4.-> sol8) |
    sol2\fermata\pp r4 |
}

dynamics = {
  
} 

staves = {
    \oneStaff
    s4 |
    s1 * 7 |
    s2 s4 |
    % S
    s4 |
    s1 * 10 |
    % T
    s1 * 11 |
    % U
    s1 * 10 |
    s2 s4 |
    % Poco meno mosso
    s4 |
    s1 * 7 |
    s2 s4 |
    % repeat bar
    s4 |
    s1 * 8 |
    % V
    s1 * 14 |
    \twoStaves
}

clarinet = \transpose do re { << \partCombine << \notes \notesI>> <<\notes \notesII >> \marks \dynamics >> }
clarinetI = \transpose do re { << \notes \notesI \marks \dynamics >> }
clarinetII = \transpose do re { << \notes \notesII \marks \dynamics >> }

clarinet_staves = {
    <<
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \clarinetI \staves >>
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \clarinetII \staves >>
        \new Staff \with {
            \consists Merge_rests_engraver
            \override VerticalAxisGroup.remove-layer = 2
            soloText = "Cl. I"
            soloIIText = "Cl. II"
        }
        \clarinet
    >>
}

clarinet_conductor = {
  \new GrandStaff \with {
    \consists Keep_alive_together_engraver
    instrumentName = \clarinet_name_long
    shortInstrumentName = \clarinet_name_short
    soloText = "Cl. I"
    soloIIText = "Cl. II"
  }
  \clarinet_staves
}

clarinetI_rigaudon = \score {
  \header { piece = "V. Rigaudon" }
  \compressMMRests{
    \new Staff
    \clarinetI
  }
}

clarinetII_rigaudon = \score {
  \header { piece = "V. Rigaudon" }
  \compressMMRests{
    \new Staff
    \clarinetII
  }
}

% \clarinet_rigaudon