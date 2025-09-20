\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"
\include "../hairpin.ily"

\language "português"

notes = \relative sol,,{
  \override NoteHead.color = #cello-range
  \clef bass 
  R2. * 8 |
  re'4\p\pizz r mi |
  fas4 r r |
  re4\< dos\f r |
  fas4\p r r |
  R2. |
  r4 r las\mf |
  re,4 mi fas |
  si\> fas si |
  % F
  fas4\pp \solo r re |
  sol4 r8 fas fas mi |
  res4 r si' |
  mi,4\piupp r8 si' r4 |
  do,4 r8 sols' r4 |
  la4 r r |
  R2. * 2 |
  % G
  sol!4\arco\tutti sol2\< |
  sol2\ff sol8-- (fas--) |
  mi2 la4 |
  re,8 sol fas16\> mi re8 re4\! |
  la'4\pp (si do) |
  re4\crescmolto mi re8 (do) |
  si8--\f do-- re2 |
  sol,2\> sol4\p |
}

double_bass_cello = << \notes \marks >>

double_bass_cello_conductor = {
  \new Staff \with {
    instrumentName = \double_bass_cello_name_long
    shortInstrumentName = \double_bass_cello_name_short
    midiInstrument = #"cello"
  }
  \double_bass_cello
}

double_bass_cello_sarabande = \score {
  \header { piece = "II. Sarabande" }
  \compressMMRests{
    \new Staff \with {
      midiInstrument = #"cello"
    }
    \double_bass_cello
  }
}

% \double_bass_cello_sarabande