\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes = \relative sol {
  \set Staff.midiInstrument = #"bassoon"
  \override NoteHead.color = #bassoon-range
  \clef bass
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
  r2 r4 re \ff |
  sol4-> (fas8--) mi re do si la |
  sol8 la si2-> do4 |
  la4 si8 do re2->\< \fermata |
  sol4-.\ffz sol,-. sol-. |
  % Poco meno mosso
  r4 |
  R1 * 7 |
  r2 r 4 |
  r4 |
  R1 * 3 |
  r2 r4 sib4\f |
  sol'2-> fa-> |
  mib2.-> do4 |
  re mib fa fa, |
  sib2 r2 |
  %V
  R1 * 4 |
  do'2 (la) |
  sib2 (sol) |
  fa2 (mib) |
  re2 sol->( |
  fas2) sib->\cresc |
  do2-> dos-> |
  re4 (do!) sib\ff sol |
  mib'2-> re-> |
  do2.-> la4 |
  sib4 do re re, |
  sol2 sib,4\p^\markup{\italic "più traquillo"} (sol) |
  mib'2-> re |
  do2. la4 |
  sib4 do re re, |
  sol2 \pp \fermata r4 |
}

bassoon = << \notes \marks >>

breaks = {
  s4
  s1 * 7 |
  s2. |
  s4 |
  s1 * 31 |
  s2. |
  \break
  % ...
}

bassoon_conductor = {
  \new Staff \with {
    instrumentName = \bassoon_name_long
    shortInstrumentName = \bassoon_name_short
  }
  \bassoon
}

bassoon_rigaudon = \score {
  \header { piece = "V. Rigaudon" }
  \compressMMRests{
    \new Staff
    << \bassoon \breaks >>
  }
}

% \bassoon_rigaudon