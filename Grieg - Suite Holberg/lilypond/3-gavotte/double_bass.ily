\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative sol {
    \set Staff.midiInstrument = #"contrabass"
    \transposition do
    \clef bass
    \key sol \major
    r2 |
    R1 * 3 |
    r2 sol4.->\f (fas8-.) |
    mi4.-> (re8-.) do4.-> (si8-.) |
    la2->\fz si4 mi |
    la,4 re sol, do |
    re4 re' sol,-- re-- |
    sol,-- r4 |
    r2 |
    R1 * 9 |
    r2 sol'4.->\f (fas8-.) |
    mi4.-> (re8-.) do4.-> (si8-.) |
    la2->\fz si4 mi |
    la,4 re sol, do |
    re4 re' sol,-- re-- |
    sol,-- r4 |
    % I
    r2 |
    R1 * 3 |
    % K
    r2 mi'2-> \f |
    re8-> do si4-. mi8-> fas sol4-> |
    re2-> sol->\f |
    fas8-> re fas4-. mi8-> do mi4-.|
    si8 mi re4-. r2 |
    R1 * 3 |
    r2 sol4->\f \arco fas-> |
    fas4->\< mi-> mi-> do-> |
    la2->\ff si4 mi |
    la,4 re sol, do |
    re4 re' sol,-- re-- |
    sol,-- r4 |
    % MUSETTE
    r2 |
    R1 * 3 |
    r2 <do sol'>4\pizz\div\pp r |
    r2 <do sol'>4 r |
    r2 <do sol'>4 r |
    r2 <do sol'>4 r |
    r2 |
    % L
    r4 sol'\p\pizz |
    fa4 mi r re |
    sib'4 sib r la |
    re4 re, r2 |
    R1 * 2 |
    r2 re'4\f\arco re |
    re4 re do do |
    do4 do si! si |
    la4 la sol sol |
    fa4 fa mi mi\< |
    la4 la sol sol |
    do->\ff do,-> r2 |
    R1 * 3 |
    r2 <do sol'>4\pizz\div\pp r |
    r2 <do sol'>4 r |
    r2 <do sol'>4 r |
    r2 <do sol'>4 r |
    r2 |
}

double_bass = << \notes \marks >>

double_bass_conductor = {
  \new Staff \with {
    instrumentName = \double_bass_name_long
    shortInstrumentName = \double_bass_name_short
  }
  \double_bass
}

double_bass_gavotte = \score {
  \header { piece = "III. Gavotte" }
  \compressMMRests{
    \new Staff
    \double_bass
  }
}

% \double_bass_gavotte