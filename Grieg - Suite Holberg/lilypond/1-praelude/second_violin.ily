\version "2.24.4"

\include "../instrument_names.ily"
\include "../globals.ily"
\include "globals.ily"

\language "português"

notes = \relative do'{
  \clef treble 
  \key sol \major
  \rthm sol \rthm sol \rthm sol \rthm sol |
  \rthm la \rthm si \rthm do \rthm re |
  \rthm mi \rthm mi \rthm fas \rthm fas |
  \rthm re \rthm re \rthm re \rthm mi-> |
  \rthm fas-> \rthm fas \rthm sol-> \rthm sol |
  \rthm la-> \rthm la \rthm la \rthm sol-> |
  \rthm la-> \rthm la \rthm la-> \rthm la |
  \rthm re \rthm re \rthm re \rthm re |
  \rthm re  \rthm re \rthm re \rthm re |
  \rthm re \rthm re \rthm dos \rthm dos |
  \rthm dos \rthm dos \rthm dos \rthm dos |
  \rthm dos \rthm dos \rthm si \rthm si |
  \rthm si \rthm si \rthm la \rthm la |
  \rthm la \rthm la \rthm sol \rthm sol |
  \rthm sol \rthm sol \rthm sol \rthm sol |
  \rthm fas \rthm fas \rthm mi \rthm mi |
  \rthm re \rthm re \rthm re \rthm fas |
  \rthm la \rthm re \rthm fas la4-. |
  % repeat bar
  re,,2-> ~ 4 r4 |
  do'!16-> (la) la (fas) fas (re) re (do) r2 |
  si 8 16 16 8 r8 r2 | 
  R1 |
  si2-> ~ 4 r4 |
  la'16-> (fas) fas (res) res (si) si (la) r2 |
  sol 8 16 16 8 r8 r2 | 
  R1 |
  fa'16-> (do) do (fa) do'8-> 8 re8-> 8 fa,16-> (re) re (fa) |
  mi16-> (si) si (mi) si'8-> 8 do8-> 8 mi,16-> (do) do (mi) |
  las, 4-> ~ 8 r8 r4 r8 las8-.-> |
  %B
  si 8-.-> si' 16 16 \rthm si \rthm si \rthm si |
  \rthm si \rthm si \rthm si \rthm si |
  \rthm si \rthm si \rthm si \rthm si |
  \rthm si \rthm si \rthm si \rthm si |
  si 8-.-> si, 16 16 \rthm si \rthm si \rthm si |
  \rthm si \rthm si \rthm si \rthm si |
  \rthm si \rthm si \rthm si \rthm si |
  \rthm si \rthm si \rthm si \rthm si |
  <<
    {
      \rthm si'-.\div \rthm si-. \rthm si-. \rthm si-. |
      \rthm si-. \rthm si-. \rthm si-. \rthm si-. |
      \rthm do \rthm do \rthm do \rthm do |
      do8
    } 
    \\
    {
      \rthm res,-. \rthm res-. \rthm res-. \rthm res-. |
      \rthm re!-. \rthm re-. \rthm re-. \rthm re-. |
      \rthm mi \rthm mi \rthm mi \rthm mi |
      re 8
    }
  >>
  r8 \tuplet 7/4 {fas'16-> (mi re do si la sol)} fas8 r8 r4 |
  %C
  r4 sol'2 re8-- si-- |
  la8. (sol16) 4 4-. (4-.) |
  mi2-> \afterGrace fas->( \startTrillSpan {mi16\stopTrillSpan fa)}|
  sol2-> ~ 8 r8 \rthm sol |
  \rthm sol-> \rthm sol \rthm si-> \rthm si |
  \rthm do-> \rthm do \rthm do \rthm re-> |
  \rthm re-> \rthm re \rthm fas-> \rthm fas |
  \rthm fas-> \rthm fas \rthm mi \rthm mi |
  \rthm mi-> \rthm mi \rthm re \rthm re |
  \rthm re-> \rthm do \rthm do-> \rthm si |
  \rthm si-> \rthm la \rthm la-> \rthm sol |
  \rthm sol-> \rthm fas \rthm sol-> \rthm sol |
  \rthm sol-> \rthm sol \rthm sol \rthm fas |
  %D
  \rthm sol \rthm sol \rthm sol \rthm sol |
  \rthm sol \rthm sol \rthm sol \rthm sol |
  \rthm sol \rthm sol \rthm fas \rthm fas |
  \rthm fas \rthm fas \rthm fas \rthm fas |
  \rthm fas \rthm fas \rthm mi \rthm mi |
  \rthm mi \rthm mi \rthm re \rthm re |
  \rthm re \rthm re \rthm do \rthm do |
  \rthm do \rthm do \rthm do \rthm do |
  \rthm si \rthm si \rthm la \rthm la |
  %E
  \rthm sol \rthm sol \rthm sol \rthm si |
  \rthm re \rthm sol \rthm si re4-. |
  r4 \rthm sol,, \rthm sol \rthm si |
  \rthm re \rthm sol \rthm si re4-. |
  r4 <<
    {
      dos4->\div re-> la-> |
      si-> re-> mi-> si-> |
      do-> la'-> si-> dos-> |
      sol4.-> \tuplet 3/2 {mi16 (fas sol)} sol4-> fas-> |
      re1\fermata |
    }
    \\
    {
      dos,4-> re-> la-> |
      si-> re-> mi-> si-> |
      do-> la'-> si-> dos-> |
      sol4.-> \tuplet 3/2 {mi16 (fas sol)} sol4-> fas-> |
      re1\fermata |
    }
  >>
}

% Splitting dynamics from the notes is only strictly necessary
% when we have divisi staves. In this case it was not necessary.
% I did it because I was in auto-pilot mode and did not think 
% much about it. It doesn't hurt anyone, and it would be a pain
% to undo the changes, so I'll just leave it as is.
dynamics = {
  s1 \ffp |
  s1\< |
  s2 \fp  s2 \fp |
  s1 \fp |
  s1 \cresc |
  s1 * 2 |
  %A
  s1 \fp \> |
  s1 \pp |
  s1 * 3 |
  s1 \piup |
  s1 * 2 |
  s1 \crescmolto |
  s1 \f |
  s4 \< s2 s4 \fz |
  %repeat bar
  s1 * 2 |
  s1 \fp |
  s1 |
  s1 \f |
  s1 |
  s1 \fp |
  s1 * 4 |
  %B
  s8 s8 \pp s4 s2 |
  s1 * 3 |
  s8 s8\> s4 s8 s8\!\piup s4 |
  s1 * 4 |
  s1 \crescmolto |
  s4 \f s4\< s2|
  s1\fz |
  %C
  s4 s2 \ff s4 |
  s1 * 3 |
  s1 _\markup{\italic sempre \dynamic ff} |
  s1 * 7 |
  s1 \> |
  %D
  s4\p s4\> s2 |
  s1\pp |
  s1 * 3 |
  s1 \piup |
  s1 * 2 |
  s1 \crescmolto |
  %E
  s1\f |
  s4 \< s2 s4 \fz |
  s4 s4 \piuf s2 |
  s4 \< s2 s4 \fz |
  s1 * 4 |
  s1 \ffz |
}

second_violin = << \notes \marks \dynamics >>

second_violin_conductor = {
  \new Staff \with {
    instrumentName = \second_violin_name_long
    shortInstrumentName = \second_violin_name_short
    midiInstrument = #"violin"
  }
  \second_violin
}

second_violin_part = \compressMMRests{
  \new Staff 
  \second_violin
}

% \score{
%   \second_violin_part

%   \layout{}
% }