\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \clef "treble"
    r4 |
    R1 * 7 |
    r2 r4 |
    % S
    r4 |
    R1 * 10 |
    % T
    R1 * 11 |
    % U
    R1 * 7 |
    si4->\ff^\markup{\bold "a2"} (la8--) sol fas mi re do |
    si8 do re2-> mi4 |
    do4 re do2->\fermata\< |
    si'4-.\!\ffz sol-. sol-. |
    % Poco meno mosso
    r4 |
    sib2\p (la) |
    sol8-> la sib2 sib4 |
    la2 sol |
    fas2. r4 |
    sib4->\mf (la) sol-> (fas) |
    la->\> (sol) fa!-> (mib) |
    mib-> (re) re-> (do) |
    fas2\pp r4 |
    % repeat bar
    r4 |
    re'2\p (do) |
    sib8-> do re2 re4 |
    do2 sib |
    la2 fa'4->\f (re) |
    sib4-> (sib') sib,-> (sib') |
    sib,4-> (sib'2) mib,4 |
    fa4 mib8 re \grace{do16 ^(re} do4.-> sib8) |
    sib2 r2 |
    % V
    sib2\p (la) |
    sol8 la sib2 sib4 |
    la2 sol |
    fas2. r4 |
    sib4-> (la) sol-> (fas) |
    la4-> (sol) fa!-> (mib) |
    mib4-> (re) re-> (do) |
    re2 fa4-> (mib) |
    mib2 la4->\cresc (sol) |
    sib4-> (la) do-> (sib) |
    re2-> re4\ff (sib) |
    sol4-> (sol') sol,4-> (sol') |
    sol,4-> (sol'2) do,4 |
    re4 do8 sib \grace{la16 _(sib} la4.-> sol8) |
    sol2 r2 |
    R1 * 3 |
    r2 r4 |
}

oboe = << \notes \marks >>


oboe_conductor = {
  \new Staff \with {
    instrumentName = \oboe_name_long
    shortInstrumentName = \oboe_name_short
  }
  \oboe
}

oboe_rigaudon = \score {
  \header { piece = "V. Rigaudon" }
  \compressMMRests{
    \new Staff \with {
      printPartCombineTexts = ##f
    }
    \oboe
  }
}

% \oboe_rigaudon
