\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative do'{
  \clef treble 
  r4 |
  <sol sol'>4\f\div\pizz r r2 |
  % remember q = last played note or chord 
  r4 q4\pp q r |
  r4 q4 q r |
  r4 q4 q r |
  <re' do'>4 r <re si'> r |
  <re do'>4 r <re si'> r |
  r4 <re fas>\cresc <re la'> <re la'> |
  <re la'>4\f r r |
  % S
  r4 |
  re'4->\p r4 r2 |
  r4 sol,4 sol r |
  dos4-> r4 r2 |
  r4 fas,4 fas r |
  si4-> r r mi, |
  la4-> r r re, |
  sol4-> r fas r |
  mi4\cresc r re r |
  dos4 r si r |
  la4 r sol r |
  % T 
  la4->\f r r la |
  la4-> r r la |
  la4-> la si la |
  la4-> r r re\p |
  re4 r re r |
  re4 r re r |
  re4 r re r |
  fas r r re'\piup |
  re4 4 4 4 |
  re4 4 4 4 |
  re4 4 4 4 |
  % U 
  fas,4 r r
  <<
    {
      la4\pp \div |
      la4 r r la |
      la4 r r la |
      la4 4 4 4 |
      la4 4 4 4 |
      la4 re, fas la |
      do4 re fas r |
    } \\
    {
      mi,4 |
      fas4 r r mi |
      fas4 r r mi |
      fas4 mi fas mi |
      fas4 mi fas mi |
      fas4 do re fas |
      la4 do re r |
    }
  >>
  si'4->\arco\ff (la8--) sol fas mi re do |
  si8 do re2-> sol,4 |
  fas4 sol fas2->\fermata |   
  mi4-.\ffz sol,-. sol-. |
  % Poco meno mosso
  r4 |
  sib'2\p (la) |
  sol8-> la sib2 sib4 |
  la2 sol |
  fas2. r4 |
  sib4->\mf (la) sol-> (fas) |
  la->\> (sol) fa!-> (mib) |
  mib-> (re) re-> (do) |
  la2\pp r4 |
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
  sol2 re4\p^\markup{\italic "più tranquillo"} (sib) |
  sol4-> (sol') sol,4-> (sol') |
  sol,4-> (sol'2) do,4 |
  re4 do8 sib \grace{la16 _(sib} la4.-> sol8) |
  sol2\fermata\pp r4 |
}



second_violin = << \notes \marks >>

second_violin_conductor = {
  \new Staff \with {
    instrumentName = \second_violin_name_long
    shortInstrumentName = \second_violin_name_short
    midiInstrument = #"violin"
  }
  \second_violin
}

second_violin_part = \compressMMRests{
  \new Staff 
  \second_violin
}

% \score{
%   \second_violin_part

%   \layout{}
%   \midi {\tempo 2 = 120}
% }