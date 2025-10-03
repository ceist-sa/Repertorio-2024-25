\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"
\include "../hairpin.ily"

\language "português"

notes = \relative sol {
  \set Staff.midiInstrument = #"bassoon"
  \override NoteHead.color = #bassoon-range
  \clef bass
  sol2. |
  sol2. |
  sol2. |
  sol2 fa8-- (mib--) |
  re2. ~ |
  2 reb8-- (do--) |
  si2. ~ |
  4. re!8 re (do) |
  % N
  do2\arco ~ (16 mib re do) |
  do16 (sib la sib) \tuplet 3/2 {la32 (sib do} sib16 ~ 4.) |
  sol2 ~ (16 sib)  la (sol) |
  sol16 (fa) mi (fa) do'-- (sib--) la-- sol-- la4 |
  sib2-> fas4
  sol4. fa16 sol la4 |
  re2 re,4 |
  % O, repeat bar
  sib''2. |
  sib2. |
  sib2. |
  sib4 la sol ~ |
  4 fa2 |
  mib2 re,4 ~|
  8 mib fa mib r4 |
  r2 re8 fa |
  mib8 sol r4 r |
  re8 sol fa4 r |
  mib2.-> |
  mib2 ~8 mib |
  re8-> sol-> fa2 |
  % P
  sib4~8 r8 r4 |
  R2. * 2 |
  \once \stemUp
  re4-> ~ (16 do) do (sib) sib (la) la (sol) |
  re'2 sol,4 \espressivo |
  \once \stemUp re'4-> ~ (16 do) do\< (sib) sib\! (la\>) \tuplet 3/2 {do16 (sib la\!)} |
  re4 sib-> (la) |
  sol4-> (fas) mi ( |
  re8) sib'-> (la sol fas mi |
  re4 ~ 8 ) r8 r4 |
  R2. |
  % Q
  re''4 re2-- |
  \tuplet 3/2 {re32-> (do si} do16 ~8 ~4.) r8 |
  do4 do2-- |
  \tuplet 3/2 {do32-> (sib la} sib16 ~8 ~4.) r8 |
  r8 fa'4-- re8-- sib-- lab-- |
  lab32-> [(sol fas sol] \tuplet 3/2 {fas32 [sol lab} sol16] ~4.) r8 |
  r8 re'8( ~ re16 si) si (sol) sol (lab) lab (fa) |
  fa32-> [(mib re mib] \tuplet 3/2 {re32 [mib fa)} mib16] ~4. r8 |
  % R
  do2. |
  sib!2. |
  fa2. |
  mib2. |
  do'2-> ~ (16 mib) re do |
  do16 (sib) la sib fa'-- (mib--) re-- do-- re4 |
  mib2-> si4 |
  do4. sib!16 do re4 |
  sol16 (sol) fa-- (mib--) re-- (do--) sib-- (la--) sol4 |
}

dynamics = {
    s2.\p |
    s2. * 2 |
    s4 s2\< |
    s2. \mf |
    s2 s4\> |
    s2. \p |
    s2. |
    % N
    s2 \cantab s16 s16\< s8 |
    s8\> s8\! s2 |
    s2.\cresc |
    s2 s4\< |
    s4 \f\> \after 8 \! s4 s4 |
    s2 s32 s32 \< s8 s16 \! |
    \once\override Hairpin.minimum-length = #8
    s4\ffp\> s4 s4\pp |
    % repeat bar
    s2. \pp |
    s2. * 3 |
    s2. \cresc |
    s2 s4\p |
    s4\< s4 s4\p |
    s2\< s4\p\< |
    s4 s2\p \cresc |
    s4\< s2 |
    s2. \ff |
    s2\< s4\! |
    s4 s2 \< |
    % P
    s2 \! s4 |
    s2. * 2 |
    s2. \p |
    s2. |
    s4 s16 s16 s8 s16 s16 s8 |
    s4 s2 \cresc |
    s2. |
    s8 s8\dim s2 |
    s4 s8\! s8 s4 |
    s2. |
    \hairpinWithRightAlignedText \markup{\italic \tiny "molto"}
    \once\override Hairpin.minimum-length = #10
    s2.\< \f \cantab |
    s8\! s8\> s4.\! s8 |
    \hairpinWithRightAlignedText \markup{\italic \tiny "molto"}
    \once\override Hairpin.minimum-length = #10
    s2.\< |
    s8\! s8\> s4.\! s8 |
    s8 s4\ff s8 s8 s8 |
    s8 s16 s16\> s4.\! s8 |
    s8 s8\cresc s8 s8 s8\< s8\> |
    s2.\! |
    s2. * 2 |
    s2. \cresc |
    s2. |
    s2. \f |
    s4 s8 s16 s16\< s4 |
    s2\ff s4 |
    s2 s4\< |
    s4\ffp\>  s4 s4 \pp |
}

bassoon = << \notes \marks \dynamics >>

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

% \bassoon_gavotte