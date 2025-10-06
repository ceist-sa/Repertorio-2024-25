\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative re, {
    \set Staff.midiInstrument = #"bassoon"
    \clef "bass"
    R2. * 8 |
    %repeat bar
    re'2 mi4 |
    fas4 ~ 8 r8 r4 |
    re4 dos2 |
    fas4 ~ 8 r8 r4 |
    R2. * 4 |
    % F
    R2. * 6 |
    r4 r r8 re8 |
    re8 re re re re re |
    %G
    re4 mib2 |
    fa4 (mi!8 [re]) sol8-- (fas--) |
    mi2 la,4 |
    re8 sol \grace{fas16 (sol} fas16) mi re8 re4 |
    la4 (si do) |
    re4 mi re8 (do) |
    si8-- do-- re2 |
    sol,2\> ~ 8\! r8 |
}

dynamics = {
    s2. * 8 |
    % repeat bar
    s2. \p |
    s2. |
    s4 \< \once\override Hairpin.minimum-length = #8 s2\f \> |
    s4 \p s2 |
    s2. * 4 |
    %F
    s2. * 7 |
    s2. \cresc |
    s4 \f s2 \< |
    s2. \ff |
    s2. |
    s4 s2 \> |
    s2. \pp |
    s2. \crescmolto |
    s2. \f |
    s2. |
}


bassoon = <<\notes \marks \dynamics >>

bassoon_conductor = {
  \new Staff \with {
    instrumentName = \bassoon_name_long
    shortInstrumentName = \bassoon_name_short
  }
  \bassoon
}

bassoon_sarabande = \score {
  \header { piece = "II. Sarabande" }
  \compressMMRests {
    \new Staff 
    \bassoon
  }
}

% \bassoon_sarabande