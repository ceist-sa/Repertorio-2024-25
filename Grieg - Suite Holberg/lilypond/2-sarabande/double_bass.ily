\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative sol,{
    \transposition do
    \clef bass 
    \key sol \major
    R2. * 8 |
    re'4\p\pizz r mi |
    fas4 r r |
    re4\< dos\f r |
    fas4\p r r |
    R2. |
    r4 r las,\mf |
    re4 mi fas |
    si\> fas si, |
    % F
    fas'4\pp \solo r re |
    sol4 r8 fas fas mi |
    res4 r si |
    mi4\piupp r8 si r4 |
    do4 r8 sols r4 |
    la4 r r |
    R2. * 2 |
    % G
    sol!4\arco\tutti sol2\< |
    sol2\ff sol'8-- (fas--) |
    mi2 la,4 |
    re8 sol fas16\> mi re8 re4\! |
    la4\pp (si do) |
    re4\crescmolto mi re8 (do) |
    si8--\f do-- re2 |
    sol2\> sol,4\p |
}

double_bass = << \notes \marks >>

double_bass_conductor = {
  \new Staff \with {
    instrumentName = \double_bass_name_long
    shortInstrumentName = \double_bass_name_short
    midiInstrument = #"contrabass"
  }
  \double_bass
}

double_bass_sarabande = \score {
  \header { piece = "II. Sarabande" }
  \compressMMRests{
    \new Staff
    \double_bass
  }
}

% \double_bass_sarabande