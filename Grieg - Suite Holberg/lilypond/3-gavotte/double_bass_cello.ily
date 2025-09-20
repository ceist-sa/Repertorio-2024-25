\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes = \relative sol, {
    \override NoteHead.color = #cello-range
    \clef bass 
    r2 |
    R1 * 3 |
    r2 sol4.->\f (fas8-.) |
    mi4.-> (re8-.) do4.-> (si'8-.) |
    la2->\fz si4 mi |
    la,4 re sol, do |
    re4 re' sol,-- re-- |
    sol,-- r4 |
    % H
    r2 |
    sol4->\p (fas8) r8 r2 |
    sol4-> (fas8) r8 r4 re'\< \pizz |
    r4 re\! r re |
    r4 re r re |
    r4\> la r re, |
    re''8\pp do si la sol4 r4 |
    R1 * 3 |
    r2 sol,4.->\f (fas8-.) |
    mi4.-> (re8-.) do4.-> (si'8-.) |
    la2->\fz si4 mi |
    la,4 re sol, do |
    re4 re' sol,-- re-- |
    sol,-- r4 |
    % I 
    r2 |
    R1 * 3 |
    r2 mi2-> \f | 
    re8-> do sol'4-. mi8-> fas sol4-> |
    re2-> sol->\f |
    fas8-> re fas4-. mi8-> do mi4-.|
    si'8 mi, re4-. r4 sol'\pizz\pp |
    r4 sol, r sol' |
    r4 sol, r sol' |
    r4 sol, r si |
    % K
    r2 sol4->\f \arco fas-> |
    fas4->\< mi-> mi-> do-> |
    la'2->\ff si4 mi |
    la,4 re sol, do |
    re4 re' sol,-- re-- |
    sol,-- r4 |
    % MUSETTE
    r2 |
    R1 * 3 |
    r2 <do, sol'>4\pizz\div\pp r |
    r2 <do sol'>4 r |
    r2 <do sol'>4 r |
    r2 <do sol'>4 r |
    r2 |
    % L
    r4 sol'\p\pizz |
    fa4 mi r re |
    sib'4 sib r la |
    re4 re, r4 sib'4 \cresc|
    la4 sol r fa |
    re'4 re r do4 |
    fa fa, re'4\f\arco re |
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

double_bass_cello = << \notes \marks >>

double_bass_cello_conductor = {
  \new Staff \with {
    instrumentName = \double_bass_cello_name_long
    shortInstrumentName = \double_bass_cello_name_short
    midiInstrument = #"cello"
  }
  \double_bass_cello
}

double_bass_cello_gavotte = \score {
  \header { piece = "III. Gavotte" }
  \compressMMRests{
    \new Staff \with {
      midiInstrument = #"cello"
    }
    \double_bass_cello
  }
}

% \double_bass_cello_gavotte