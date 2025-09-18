\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes = \relative sol,,{
  \override NoteHead.color = #cello-range
  \clef bass 
  
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

double_bass_cello_part = \compressMMRests{
  \new Staff \with {
    midiInstrument = #"cello"
  }
  \double_bass_cello
}

% \score{
%   \double_bass_cello_part
%   \layout{}
% }