\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la {
    \set Staff.midiInstrument = #"clarinet"
    % \override NoteHead.color = #clarinet-range
    \clef "treble"
    R2. * 8 |
    si2.  |
    r8 si8-> \grace { las16 (si16 } las16 ->) lab16 fas8 fas4 | % 11
    si4   si2     | % 12
    r8 si8 -> \grace { las16 (si16 } si16 ->) sols16 fas8 fas4 | % 13
    R2. * 10 | % 22
    %...
}

notesI = \relative la {
    s2. * 22 |
    r4 r4 r8 re8 | % 24
    re8  reb8 reb8 do8 do8 fa8 | % 25
    fa4  sol4 (  fas4 )  | % 26
    sol4  sol8 ( fas8 ) sol4 | % 27
    re2 reb4 | % 28
    re8 si8 la4 ~ la8 r8 | % 29
    fa'2\pp (  mi4 ) |
    fa4  sol4 sol4
    | % 31
    sol8 --   sol8 -- sol4 fas4 | % 32
    re4 re4 ~  re8   r8

}

notesII = \relative la {
    s2. * 22 |
    r4 r4 r8 fas8 | % 24
    fas8  sol8 sol8 la8 la8 si8 | % 25
    si4  do2  | % 26
    re8   do16 si16 do8 ( re8 ) re4 | % 27
    si8 la16 sol16 la8 ( si8 ) la8 ( sol8 ) | % 28
    la8 sol8 fas4  la8 (   si8 ) | % 29
    R2. |
    re4\pp mi4 re8 ( do8 ) | % 31
    si8 --   do8 -- re2 | % 32
    sol,2 ~  sol8   r8
}

dynamics = {
  s2. * 8 |
  % repeat bar
  s2. \p |
  s2. |
  s4 \< s8\f s8\> s8 s16 s16\!|
  s8 s8\p s2 |
  s2. * 4 |
  %F
  s2. * 7 |
  s2.\< |
  s4\f s2\< |
  s2. \ff |
  s2. |
  s4 s4 \> s8\! s8|
  s2. |
  s2. \crescmolto |
  s2. \f |
  s4 s4\> s8\! s8|
}

clarinet = \transpose do re {<< \partCombine << \notes \notesI >> << \notes \notesII >> \marks \dynamics >>}
clarinetI = \transpose do re { << \notes \notesI \marks \dynamics >> }
clarinetII = \transpose do re { << \notes \notesII \marks \dynamics >> }

clarinet_conductor = {
  \new Staff \with {
    instrumentName = \clarinet_name_long
    shortInstrumentName = \clarinet_name_short
    soloText = "Cl. I"
    soloIIText = "Cl. II"
  }
  \clarinet
}

clarinetI_sarabande = \score {
  \header { piece = "II. Sarabande" }
  
    \new Staff
    \clarinetI
  
}

clarinetII_sarabande = \score {
  \header { piece = "II. Sarabande" }
  
    \new Staff
    \clarinetII
  
}

% \score {
%   <<
%   \new Staff {\clarinetI}
%   \new Staff {\clarinetII}
%   \clarinet_conductor
%   >>
% }