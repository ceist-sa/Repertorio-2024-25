\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \set Staff.midiInstrument = #"oboe"
    \clef "treble"
    R1*3 |
    r2 r4 s4|
    s1 * 3 |
    % A
    s4 r4 r2 |
    R1 * 8 |
    r4 s2. |
    s1 |
    % repeat bar
    s1 * 11 |
    % B
    s1 * 12 |
    % C
    s1 * 3|
    s2 s4 s4 |
    s1 * 9 |
    re,4\p r4 r2 |
    % D
    mi'2_\markup{\dynamic p \italic dolce} 4. 8-- ( |
    la,2) r4 r8 \tuplet 3/2 {la16( si do} |
    re2) 4. 8--( |
    sol,2) r4 r8 \tuplet 3/2 {sol16( la si} |
    do2)\piup r4 r8 \tuplet 3/2 {fas,16( sol la} |
    si2) r4 r8 \tuplet 3/2 {mi,16( fas sol} |
    la4-.) r4 fas2\startTrillSpan ~ |
    fas2\crescmolto ~ \afterGrace fas2 ( {mi16 fas)} |
    %E
    sol8-.\stopTrillSpan\f r8 \rthm sol \rthm sol \rthm si |
    \rthm re\< \rthm sol \rthm si re4-.\fz |
    r4 \rthm sol,,\piuf \rthm sol \rthm si |
    \rthm re\< \rthm sol \rthm si re4-.\fz |
    r4 s2. |
    s1 * 3 |
    s1 |
}

notesI = \relative la' {
    s1*3 |
    s2 s4
    la4 -> -\mp |
    la2->\cresc dos2-> |
    re2. -> re4 -> |
    re2 -> dos2 -> |
    % A
    re4 \f s4 s2 |
    s1 * 8 |
    s4 re,-.\f fas-. la-. |
    fas-.\< la-. re-. fas-.\fz |
    % repeat bar
    la,2-> ~4 r4 |
    R1 |
    re,2.\fp (mi4) |
    fas4 (sol la si) |
    la2->\f ~ 4 r4 |
    R1 |
    si,2.\fp (dos4) |
    res ( mi fas sol )
    r4 fa -> -\f fa -> r4 |
    r4 mi4 -> mi4 -> r4 |
    mi4-> ~ 8 r8 r4 r8 la8-> |
    % B
    si8-> r8 r4 r4 res4\p |
    mi2 (do) |
    re (si) |
    do (las) |
    si r2  |
    R1 * 5 |
    sol4\f -> do\< -> sol' -> do -> |
    re4->\fz ~ 8  r8 r2 |
    % C
    r4 \rthm sol,,->\ff \rthm la \rthm si-> |
    \rthm do-> \rthm re-> \rthm do-> \rthm si-> |
    \rthm la-> \rthm la \rthm fas-> \rthm fas |
    \rthm sol-> \rthm sol \rthm sol \rthm fa |
    \rthm mi-> \rthm mi \rthm si'-> \rthm si |
    \rthm sol-> \rthm sol \rthm sol \rthm do-> |
    \rthm si-> \rthm si \rthm fas'-> \rthm fas |
    \rthm re-> \rthm re \rthm mi-> \rthm mi |
    \rthm do-> \rthm do \rthm re-> \rthm re |
    \rthm si-> \rthm do \rthm la-> \rthm si |
    \rthm sol-> \rthm la \rthm fas-> \rthm sol |
    \rthm mi-> \rthm fas \rthm re-> \rthm mi |
    \rthm re->\> \rthm re \rthm re-> \rthm re |
    s1\! |
    % D
    s1 * 8 |
    %E
    s1 * 4 |
    s4 dos'4->\ff re-> la-> |
    si-> re-> mi-> si-> |
    do-> la'-> si-> dos-> |
    sol4.-> \tuplet 3/2 {mi16 (fas sol)} sol4-> fas-> |
    re1\fermata |
}

notesII = \relative la' {
    s1*3 |
    s2 s4
    mi4 ->\mp  |
    fas2 ->\cresc sol2 -> |
    la2. -> si4 -> |
    la2 -> la2 -> |
    % A
    la4\f s4 s2 |
    s1 * 8 |
    s4 re,\f-. re-. fas-. |
    re4-.\< fas-. la-. re4-.\fz |   
    % repeat bar
    do,2-> ~4 r4 |
    R1 * 3 |
    fas2->\f ~ 4 r4 |
    R1 * 3 |
    r4 do -> -\f re -> r4 |
    r4 si4 -> do4 -> r4 |
    do4-> ~ 8 r8 r4 r8 la'8-> |
    % B
    si8-> r8 r4 r2 |
    R1 * 3 |
    r2 r4 res4 \piup |
    mi2 (do) |
    re (si) |
    do (las) |
    si4\pp r4 r2 |
    R1 |
    mi,4 \f -> la\< -> mi'-> la -> |
    la4->\fz ~ 8  r8 r2 |
    % C
    r4 \rthm si,,->\ff \rthm do-> \rthm re-> |
    \rthm mi-> \rthm fas-> \rthm mi-> \rthm re-> |
    \rthm do-> \rthm do \rthm re-> \rthm re |
    \rthm si-> \rthm si \rthm si \rthm re |
    \rthm do-> \rthm do \rthm fa-> \rthm fa |
    \rthm mi-> \rthm mi \rthm mi \rthm la-> |
    \rthm sol-> \rthm sol \rthm do \rthm do |
    \rthm si \rthm si \rthm si-> \rthm si |
    \rthm la \rthm la \rthm la-> \rthm la |
    \rthm sol-> \rthm sol \rthm fas-> \rthm fas |
    \rthm mi-> \rthm mi \rthm re-> \rthm re |
    \rthm do-> \rthm do \rthm re-> \rthm mi |
    \rthm re->\> \rthm si \rthm do-> \rthm do |
    s1\! |
    % D
    s1 * 8 |
    %E
    s1 * 4 |
    s4 dos4->\ff re-> la'-> |
    si,-> re-> mi-> si-> |
    do-> la'-> si-> dos-> |
    sol4.-> \tuplet 3/2 {mi16 (fas sol)} sol4-> fas-> |
    re1\fermata |
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
    s1 * 3 |
    s2. s4_\markup{\italic sempre \dynamic ff} |
    s1 * 9 |
    % D
    s1 * 9 |
    % E
    s1 * 8 |
    s1 \ffz |
}


oboeI = << \notes \notesI \marks \dynamics >>
oboeII = << \notes \notesII \marks \dynamics >>
oboe = << \partCombine << \notes \notesI >> << \notes \notesII >> \marks \dynamics >>

oboe_conductor = {
  \new Staff \with {
    instrumentName = \oboe_name_long
    shortInstrumentName = \oboe_name_short
    soloText = #"Ob. I"
    soloIIText = #"Ob. II"
  }
  \oboe
}

oboeI_praelude = \score {
    \header { piece = "I. Praelude" }
    \compressMMRests {
        \new Staff
        \oboeI
    }
}

oboeII_praelude = \score {
    \header { piece = "I. Praelude" }
    \compressMMRests {
        \new Staff
        \oboeII
    }
}

% \score {
%     <<
%     \new Staff {\oboeI}
%     \new Staff {\oboeII}
%     \oboe_conductor
%     >>
% }