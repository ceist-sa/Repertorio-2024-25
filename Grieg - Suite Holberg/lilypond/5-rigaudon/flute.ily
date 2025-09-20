\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
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
    si'4->\ff (la8--) sol fas mi re do |
    si8 do re2-> mi4 |
    do4 re do2->\fermata\< |
    si4-.\!\ffz sol-. sol-. |
    % Poco meno mosso
    re' |
    sol( fa8 mib) re4( do) |
    sib8-> do re2 re4 |
    re2 \grace { dos16\( re} dos2 \) |
    re2. re4 |
    mib2( do) |
    re( sib) |
    la( sol) |
    fas r4  fa'!4|
    sib( la8 sol) fa4( mib)|
    re8-> mib fa2 fa4 |
    fa2 \grace { mi16\( fa} mi2 \)|
    fa2 sib,4( sib') |
    fa->( mib) mib->( re) |
    re8->( do) do2 mib8 sol |
    fa4 mib8 re  \grace { do16 \(( re } do4.\) sib8) | 
    sib2 r4 re4 |
    sol4( fa8 mib8) re4( do) |
    sib8-> do re2 re4 |
    re2 \grace { dos16\( re} dos2 \)  |
    re2. re4 |
    mib2( do) |
    re( sib) |
    la( sol) |
    fas sib->( |
    la) re-> |
    mib-> mi -> |
    fas -> re4( sol)|
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
    midiInstrument = #"flute"
  }
  \flute
}

flute_rigaudon = \score {
  \header { piece = "V. Rigaudon" }
  \compressMMRests{
    \new Staff
    \flute
  }
}

% \flute_rigaudon