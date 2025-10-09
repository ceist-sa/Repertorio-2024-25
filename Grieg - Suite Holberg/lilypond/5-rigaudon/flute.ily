\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \set Staff.midiInstrument = #"flute"
    \override NoteHead.color = #flute-range
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
    si'4->\ff^\markup{\bold "a2"} (la8--) sol fas mi re do |
    si8 do re2-> mi4 |
    do4 re do2->\fermata\< |
    si4-.\!\ffz sol-. sol-. |
    % Poco meno mosso
    re'\p |
    sol( fa8 mib) re4( do) |
    sib8-> do re2 re4 |
    re2 \grace { dos16\( re} dos2 \) |
    re2. re4 |
    mib2\mf ( do) |
    re\>( sib) |
    la( sol) |
    fas\pp r4  |
    % repeat bar
    fa'!4\p|
    sib( la8 sol) fa4( mib)|
    re8-> mib fa2 fa4 |
    fa2 \grace { mi16\( fa} mi2 \)|
    fa2 sib,4\f( sib') |
    fa->( mib) mib->( re) |
    re8->( do) do2 mib8 sol |
    fa4 mib8 re  \grace { do16 \(( re } do4.\) sib8) |
    sib2 r4 re4\p |
    sol4( fa8 mib8) re4( do) |
    sib8-> do re2 re4 |
    re2 \grace { dos16\( re} dos2 \)  |
    re2. re4 |
    mib2( do) |
    re( sib) |
    la( sol) |
    fas sib->( |
    la) re->\cresc |
    mib-> mi -> |
    fas -> re4\ff ( sol)|
    re->( do) do->(sib) |
    sib8->( la) la2 do8 mib |
    re4 do8 sib \grace {la16\( sib } la4.->  sol8 \) |
    sol2 r2 |
    R1 * 3 |
    r2 r4 |
}


flute = << \notes \marks >>


flute_conductor = {
  \new Staff \with {
    instrumentName = \flute_name_long
    shortInstrumentName = \flute_name_short
  }
  \flute
}

flute_rigaudon = \score {
  \header { piece = "V. Rigaudon" }
  
    \new Staff \with {
      printPartCombineTexts = ##f
    }
    \flute
  
}

% \flute_rigaudon