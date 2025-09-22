\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

% TODO: separate oboe I and oboe II parts

notes =  \relative la' {
    \set Staff.midiInstrument = #"oboe"
    \clef "treble"
    R1*3 |
    r2 r4
    <<
        {
            la4 -> -\mp |
            la2->\cresc dos2-> |
            re2. -> re4 -> |
            re2 -> dos2 -> |
            % A
            re4 \f
        }{
            mi,4 ->  |
            fas2 -> sol2 -> |
            la2. -> si4 -> |
            la2 -> la2 -> |
            % A
            la4
        }
    >> r4 r2 |
    R1 * 8 |
    r4 <<
        {
            re,-.\f fas-. la-. |
            re,4-.\< fas-. la-. re4-.\fz |
        }
        {
            re,-. re-. fas-. |
            fas-. la-. re-. fas-. |
        }
    >>
    % repeat bar
    <do, la'>2-> ~4 r4 |
    R1 |
    re2.\solo\fp (mi4) |
    fas4 (sol la si) |
    <la fas>2->\tutti ~ 4 r4 |
    R1 |
    si,2.\solo\fp (dos4) |
    res ( mi fas sol )
    r4 <fa do>\tutti -> -\f <fa re> -> r4 |
    r4 <mi si>4 -> <mi do>4 -> r4 |
    <do mi>4-> ~ 8 r8 r4 r8 la'8-> |
    % B
    si8-> r8 r4 r4 res4\p^\markup{\right-align \smallCaps "Ob. I"} |
    mi2 (do) |
    re (si) |
    do (las) |
    si r4 res\piup^\markup{\right-align \smallCaps "Ob. II"} |
    mi2 (do) |
    re (si) |
    do (las) |
    si4\pp r4 r2 |
    R1 |
    <mi, sol>4\f -> <la do>\< -> <mi' sol> -> <la do> -> |
    <la re>4->\fz ~ 8  r8 r2 |
    % C
    r4
    <<
        {
            \rthm sol,->\ff \rthm la \rthm si-> |
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
        }
        {
            \rthm si-> \rthm do-> \rthm re-> |
            \rthm mi-> \rthm fas-> \rthm mi-> \rthm re-> |
            \rthm do-> \rthm do \rthm re-> \rthm re |
            \rthm si-> \rthm si \rthm si \rthm re_\markup{\italic sempre \dynamic ff} |
            \rthm do-> \rthm do \rthm fa-> \rthm fa |
            \rthm mi-> \rthm mi \rthm mi \rthm la-> |
            \rthm sol-> \rthm sol \rthm do \rthm do |
            \rthm si \rthm si \rthm si-> \rthm si |
            \rthm la \rthm la \rthm la-> \rthm la |
            \rthm sol-> \rthm sol \rthm fas-> \rthm fas |
            \rthm mi-> \rthm mi \rthm re-> \rthm re |
            \rthm do-> \rthm do \rthm re-> \rthm mi |
            \rthm re-> \rthm si \rthm do-> \rthm do |
        }
    >>
    re4\p r4 r2 |
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
    r4 <<
        {
            dos,4->\ff re-> la-> |
            si-> re-> mi-> si-> |
            do-> la'-> si-> dos-> |
            sol4.-> \tuplet 3/2 {mi16 (fas sol)} sol4-> fas-> |
            re1\ffz\fermata |
        }
        {
            dos,4-> re-> s4 |
            si-> re-> mi-> si-> |
            do-> la'-> si-> dos-> |
            sol4.-> \tuplet 3/2 {mi16 (fas sol)} sol4-> fas-> |
            re1\fermata |
        }
    >>
}

oboe = << \notes \marks>>

oboe_conductor = {
  \new Staff \with {
    instrumentName = \oboe_name_long
    shortInstrumentName = \oboe_name_short
  }
  \oboe
}

oboe_praelude = \score {
    \header { piece = "I. Praelude" }
    \compressMMRests {
        \new Staff
        \oboe
    }
}

% \oboe_praelude