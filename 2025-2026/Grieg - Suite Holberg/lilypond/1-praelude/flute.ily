\version "2.24.4"

\include "../../../../styles/ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    % \override NoteHead.color = #flute-range
    \set Staff.midiInstrument = #"flute"
    \clef "treble"
    s1*7 |
    % A
    s1 * 11|
    % repeat bar
    R1*8 |
    s1 * 6 |
    % B
    s1 * 9 |
    % C
    r4 sol''2\ff re8-- si-- |
    la8. (sol16) 4 4-. (4-.) |
    mi2-> \afterGrace fas-> \startTrillSpan ( {mi16 \stopTrillSpan fa)}|
    sol2-> ~ 8 r8 \rthm si,_\markup{\italic sempre \dynamic ff} |
    \rthm do-> \rthm do \rthm fa-> \rthm fa |
    \rthm mi-> \rthm mi \rthm mi \rthm fas->|
    \rthm sol-> \rthm sol \rthm do-> \rthm do |
    \rthm si-> \rthm si \rthm si \rthm si |
    \rthm la-> \rthm la \rthm la \rthm la |
    \rthm sol-> \rthm sol \rthm fas-> \rthm fas |
    \rthm mi-> \rthm mi \rthm re-> \rthm re |
    \rthm do-> \rthm do \rthm si-> \rthm si |
    \rthm la->\> \rthm la \rthm la \rthm la |
    % D
    sol4\p r4 r2 |
    s1 * 8 |
    % E
    s8 r8 \rthm sol \rthm si \rthm re |
    \rthm sol\< \rthm si \rthm re sol4-.\fz |
    r4 \rthm sol,,\piuf \rthm si \rthm re |
    \rthm sol\< \rthm si \rthm re sol4-.\fz |
    r4 s4 s4 s4 |
    s1 * 4 |
}

notesI = \relative la' {
    R1*3 |
    r2 r4 la4 -> -\mp |
    la2->\cresc dos2-> |
    re2. -> re4 -> |
    re2 -> dos2 -> |
    % A
    re4 \f r4 r2 |
    si'2_\markup{\dynamic p \italic "dolce e tranq."} 4. 8-- ( |
    mi,2) r4 r8 \tuplet 3/2 {mi16( fas sol} |
    la2) 4. 8--( |
    re,2) r4 r8 \tuplet 3/2 {re16( mi fas} |
    sol2)\piup r4 r8 \tuplet 3/2 {dos,16( re mi} |
    fas2) r4 r8 \tuplet 3/2 {si,16( dos re} |
    mi4-.) r4 dos2\startTrillSpan ~ |
    dos2\crescmolto ~ \afterGrace dos2 ( {si16 dos)} |
    re4-.\f\stopTrillSpan re,-. fas-. la-. |
    re4-.\< fas-. la-. re4-.\fz |
    \partCombineUnisono
    R1*8 |
    \partCombineAutomatic
    r4 fa, -> -\f fa -> r4 |
    r4 mi4 -> mi4 -> r4 |
    mi4-> ~ 8 r8 r4 r8 mi8-> |
    % B
    res8-> r8 r4 r4 si'4 \p |
    do2 ( la2 ) |
    si2 ( sol2 ) |
    la2 ( sol2 ) |
    fas2 r2 |
    R1*5 |
    do4\f -> sol'\< -> do -> sol' -> |
    fas4->\fz ~ 8  r8 r2 |
    % C
    s1 * 13 |
    % D
    s1 |
    mi2 4. 8-- ( |
    la,2) r4 r8 \tuplet 3/2 {la16( si do} |
    re2) 4. 8--( |
    sol,2) r4 r8 \tuplet 3/2 {sol16( la si} |
    do2) r4 r8 \tuplet 3/2 {fas,16( sol la} |
    si2) r4 r8 \tuplet 3/2 {mi,16( fas sol} |
    la4-.) r4 fas2\startTrillSpan ~ |
    fas2 ~ \afterGrace fas2 ( {mi16 fas)} |
    %E
    sol8-.\f \stopTrillSpan s8 s4 s4 s4 |
    s1 * 3 |
    s4 sol4->\ff fas-> mi-> |
    re-> la'-> sol-> fa-> |
    mi-> mi'-> re-> sol-> |
    si,2-> la4.->\startTrillSpan (sol8--\stopTrillSpan ) |
    sol1 \fermata |
}

notesII = \relative la' {
    R1*3 |
    r2 r4 mi4 -> -\mp |
    fas2->\cresc sol2 -> |
    la2. -> si4 -> |
    la2 -> la2 -> |
    % A
    la4 \f r4 r2 |
    R1*8 |
    r4 re,-.\f re-. fas-. |
    la-.\< re-. fas-. la-.\fz |
    R1*8 |
    r4 do, -> -\f re -> r4 |
    r4 si4 -> do -> r4 |
    do4-> ~ 8 r8 r4 r8 mi8-> |
    % B
    res8-> r8 r4 r4 fas4\p |
    sol2 (mi) |
    fas (re) |
    mi (dos) |
    res2 r2 |
    R1*5 |
    la4\f -> mi'\< -> la -> re -> |
    fas4->\fz ~ 8  r8 r2 |
    % C
    s1 * 13 |
    % D
    s1 |
    mi,2 4. 8-- ( |
    la,2) r4 r8 \tuplet 3/2 {la16( si do} |
    re2) 4. 8--( |
    sol,2) r4 r8 \tuplet 3/2 {sol16( la si} |
    do2) r4 r8 \tuplet 3/2 {fas,16( sol la} |
    si2) r4 r8 \tuplet 3/2 {mi,16( fas sol} |
    la4-.) r4 fas2\startTrillSpan ~ |
    fas2 ~ \afterGrace fas2 ( {mi16 fas)} |
    %E
    sol8-.\f \stopTrillSpan s8 s4 s4 s4 |
    s1 * 3 |
    s4 sol4->\ff fas-> mi-> |
    re-> la'-> sol-> fa-> |
    mi-> mi'-> re-> sol-> |
    si,2-> la4.->\startTrillSpan (sol8--\stopTrillSpan ) |
    sol1 \fermata |
}

dynamics = {
    s1 * 7 |
    % A 
    s1 * 11 |
    % repeat bar
    s1 * 11 |
    % B
    s1 * 12 |
    % C
    s1 * 13 |
    % D
    s1 |
    s2_\markup{\dynamic p \italic dolce} s2 |
    s1 * 3 |
    s2\piup s2 |
    s1 * 2 |
    s1\crescmolto |
    % E
    s1 * 8 |
    s1 \ffz |
}

flute =  << \partCombine << \notes \notesI >> << \notes \notesII >> \marks \dynamics >>
fluteI = << \notes \notesI \marks \dynamics >>
fluteII = << \notes \notesII \marks \dynamics >>

flute_conductor = {
  \new Staff \with {
    \consists Merge_rests_engraver
    instrumentName = \flute_name_long
    shortInstrumentName = \flute_name_short
    soloText = #"Fl. I"
    soloIIText = #"Fl. II"
  }
  \flute
}

fluteI_praelude = \score {
    \header { piece = "I. Praelude" }
    
        \new Staff
        \fluteI
    
}

fluteII_praelude = \score {
    \header { piece = "I. Praelude" }
    
        \new Staff
        \fluteII
    
}

% \flute_praelude