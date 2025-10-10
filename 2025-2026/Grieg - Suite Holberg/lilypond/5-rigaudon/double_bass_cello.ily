\version "2.24.4"

\include "../../../../styles/ranges.ily"
\include "globals.ily"

\language "português"

notes = \relative sol {
  \set Staff.midiInstrument = #"cello"
  % \override NoteHead.color = #cello-range
  \clef bass
  r4 |
  R1 * 7 |
  re4-.->\f re,-. re-. |
  % S
  r4 |
  R1 * 6 |
  r4 re'\pizz\p r re |
  r4 re\cresc r re |
  r4 re r re |
  r4 re r re |
  % T
  r4 re,\f re-> r |
  r4 re re-> r |
  R1 |
  r4 re re-> r |
  r4 re'\p r re |
  r4 re r re |
  r4 re r re |
  r4 re re-> r |
  r4 re'\piup r re |
  r4 re r re |
  r4 re r re |
  % U
  r4 re re r |
  r4 re,\pp re r |
  r4 re re r |
  r2 re4 la |
  re,4 la' re r4 |
  R1 |
  r2 r4 re\arco \ff |
  sol4-> (fas8--) mi re do si la |
  sol8 la si2-> do4 |
  la4 si8 do re2->\< \fermata |
  sol4-.\!\ffz sol,-. sol-. |
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
  sol'4\pizz\p r4 r2 |
  sol4 r4 r2 |
  r4 fa r mib |
  r4 re r2 |
  r4 do r la |
  r4 sib r sol |
  r4 fa r mib |
  r4 re r sol |
  r4 fas\cresc r sib |
  r4 do r dos\arco |
  re4 (do!) sib\ff sol |
  mib'2-> re-> |
  do2.-> la4 |
  sib4 do re re, |
  sol2 sib4\p^\markup{\italic "più traquillo"} (sol) |
  mib'2-> re |
  do2. la4 |
  sib4 do re re, |
  sol2 \pp \fermata r4 |
}

double_bass_cello = << \notes \marks >>

double_bass_cello_conductor = {
  \new Staff \with {
    instrumentName = \double_bass_cello_name_long
    shortInstrumentName = \double_bass_cello_name_short
  }
  \double_bass_cello
}

double_bass_cello_rigaudon = \score {
  \header { piece = "V. Rigaudon" }
  
    \new Staff
    \double_bass_cello
  
}

% \double_bass_cello_rigaudon