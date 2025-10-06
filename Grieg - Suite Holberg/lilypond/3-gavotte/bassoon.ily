\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes = \relative sol, {
    \set Staff.midiInstrument = #"bassoon"
    \override NoteHead.color = #bassoon-range
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
    sol4-> (fas8) r8 r2 |
    R1 * 7 |
    r2 sol4.->\f (fas8-.) |
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
    si8 do re4-. r2 |
    R1 * 3 |
    % K
    r2 sol4->\f fas-> |
    fas4->\< mi-> mi-> do-> |
    la'2->\ff si4 mi |
    la,4 re sol, do |
    re4 re' sol,-- re-- |
    sol,-- r4 |
    % MUSETTE
    do,2\pp ~ |
    2 \repeat unfold 6 {do2 ~ 2}
    do2 ~ |
    4 ~ 8 r8 |
    % L
    r2 |
    R1 * 5 |
    r2 re'4\f re |
    re4 re do do |
    do4 do si! si |
    la4 la sol sol |
    fa4 fa mi mi\< |
    la4 la sol sol |
    do->\ff do,-> do2\pp ~ |
    2 \repeat unfold 6 {do2 ~ 2}
    do2 ~ |
    4 ~ 8 r8 |
}

bassoon = << \notes \marks >>

bassoon_conductor = {
  \new Staff \with {
    instrumentName = \bassoon_name_long
    shortInstrumentName = \bassoon_name_short
  }
  \bassoon
}

bassoon_gavotte = \score {
  \header { piece = "III. Gavotte" }
  \compressMMRests{
    \new Staff
    \bassoon
  }
}

\bassoon_gavotte