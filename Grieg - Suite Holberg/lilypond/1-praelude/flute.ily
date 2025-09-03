\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \override NoteHead.color = #flute-range
    \clef "treble" 
    \key sol \major 
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
            la4 
        } 
    >> r4 r2 | 
    si'2\solo_\markup{\dynamic p \italic "dolce e tranq."} 4. 8-- ( |
    mi,2) r4 r8 \tuplet 3/2 {mi16( fas sol} |
    la2) 4. 8--( |
    re,2) r4 r8 \tuplet 3/2 {re16( mi fas} |
    sol2)\piup r4 r8 \tuplet 3/2 {dos,16( re mi} |
    fas2) r4 r8 \tuplet 3/2 {si,16( dos re} |
    mi4-.) r4 dos2\startTrillSpan ~ |
    dos2\crescmolto ~ \afterGrace dos2 ( {si16 dos)} |
    re4-.\f\stopTrillSpan <<
        {
            re,-.\tutti fas-. la-. |
            re4-.\< fas-. la-. re4-.\fz |
        }
        {
            re,,-. re-. fas-. |
            la-. re-. fas-. la-. |
        }
    >>
    % repeat bar
    R1*8 |
    r4 <fa do> -> -\f <fa re> -> r4 | 
    r4 <mi si>4 -> <mi do>4 -> r4 | 
    <do mi>4-> ~ 8 r8 r4 r8 mi8-> |
    % B
    res8-> r8 r4 r4 
    << 
        {
            si'4 \p | 
            do2 ( la2 ) | 
            si2 ( sol2 ) | 
            la2 ( sol2 ) | 
            fas2
        } 
        {
            fas4 |
            sol2 (mi) |
            fas (re) |
            mi (dos) |
            res2
        }
    >>
    r2 | 
    R1*5 |
    <do la>4\f -> <sol' mi>\< -> <do la> -> <sol' re> -> |
    fas4->\fz ~ 8  r8 r2 | 
    % C
    r4 sol2\ff re8-- si-- |
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
    <<
        {
            
            mi''2_\markup{\dynamic p \italic dolce} 4. 8-- ( |
            la,2) r4 r8 \tuplet 3/2 {la16( si do} |
            re2) 4. 8--( |
            sol,2) r4 r8 \tuplet 3/2 {sol16( la si} |
            do2)\piup r4 r8 \tuplet 3/2 {fas,16( sol la} |
            si2) r4 r8 \tuplet 3/2 {mi,16( fas sol} |
            la4-.) r4 fas2 ~ |
            fas2\crescmolto ~ \afterGrace fas2 ( {mi16 fas)} |
            %E
            sol8-.\f
        }
        {
            mi2 4. 8-- ( |
            la,2) r4 r8 \tuplet 3/2 {la16( si do} |
            re2) 4. 8--( |
            sol,2) r4 r8 \tuplet 3/2 {sol16( la si} |
            do2) r4 r8 \tuplet 3/2 {fas,16( sol la} |
            si2) r4 r8 \tuplet 3/2 {mi,16( fas sol} |
            la4-.) r4 fas2\startTrillSpan ~ |
            fas2 ~ \afterGrace fas2 ( {mi16 fas)} |
            %E
            sol8-. \stopTrillSpan
        }
    >> 
        
    r8 \rthm sol \rthm si \rthm re |
    \rthm sol\< \rthm si \rthm re sol4-.\fz |
    r4 \rthm sol,,\piuf \rthm si \rthm re |
    \rthm sol\< \rthm si \rthm re sol4-.\fz |
    r4 
    <<
        {
            sol,4->\ff fas-> mi-> |
            re-> la'-> sol-> fa-> |
            mi-> mi'-> re-> sol-> |
            si,2-> la4.->\startTrillSpan (sol8--\stopTrillSpan ) |
            sol1 \ffz \fermata |
        }
        {
            sol,4-> fas-> mi-> |
            re-> la'-> sol-> fa-> |
            mi-> mi'-> re-> sol-> |
            si,2-> la4.-> (sol8-- ) |
            sol1 \fermata |
        }
    >>
}


flute = << \notes  \marks >>

flute_conductor = {
  \new Staff \with {  
    instrumentName = \flute_name_long
    shortInstrumentName = \flute_name_short
    midiInstrument = #"flute"
  }
  \flute
}


% \score{
%   \flute_part
%   \layout {}
% }