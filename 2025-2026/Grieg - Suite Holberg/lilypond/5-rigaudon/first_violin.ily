\version "2.24.4"

\include "../instrument_names.ily"
\include "../globals.ily"
\include "globals.ily"

\language "português"

notes_solo = \relative do'{
  re'4-. |
  sol8-. re-. si-. la-. si-. re-. sol-. re-.|
  si4-.-> sol-. sol-. si-. |
  la-.-> fas-. fas-. la-. |
  si-.-> sol-. sol-. si8( re)|
  do-> ( re do re) si4-. si8( re)|
  do-> ( re do re) si4-. si8( re)|
  la( re) la( re) dos( sol') dos,( sol') |
  < re, la' fas' >4 -.-> r4 r4 re'-. | %S

  sol8-.-> re-. si-. la-. si-. re-. sol-. re-. |
  mi4-.-> dos-. dos-. mi-. |
  fas8-> dos la sol la dos fas dos |
  re4-> si-. si-. re-. |
  mi8-> fas, sol si dos4-.-> la |
  re8-.-> mi, fas la si4-.-> sol-. |
  dos->-. r4 si r4 |
  la r4 sol r4 |
  fas r4 mi r4 |
  re r4 dos r4 | %T
  la2.-> la8( dos) |
  la2.-> la8( dos) |
  la->( re) la->( re) si->( re) la->( dos) |
  la2.-> re8( re' |
  mi,4-.) re8( re' mi,4-.) mi8( re' |
  sol,4-.) sol8( re' si4-.) si8( re |
  do4-.) do8( re dos4-.) dos8( re) |
  la2. re8( re' |
  mi, re' mi, re') fas,( re' fas, re') |
  sol,( re' sol, re') si( re si re) |
  do( re do re) dos( re dos re) | %U
  la2. la,8( do) |
  la2.-> la8( do) |
  la2.-> la8( do) |
  la8( do) la8( do) la8( do) la8( do) |
  la8( do) la8( do) la8( do) la8( do) |
  la( do) do( fas) fas( la) la( do) |
  \ottava #1  do( fas) fas( la) la( do) \ottava #0 r4 |
  si,4-> ( la8--) sol8 fas mi re do |
  si do re2-> mi4 |
  do si \grace { la16 \(  si }  la4.\fermata \)\( sol8\) |
  sol4-. sol,-. sol-.
}


notes = \relative do'{ % tutti with solo (two staves)
   \set Staff.midiInstrument = #"violin"
  s4 |
  s1 * 8 |%S

  sol''4-> r4 r2 |
  r4 dos,4 dos r4 |
  fas -> r4 r2 |
  r4 si, si r4 |
  mi-> r4 r4 la, |
  re-> r4 r4 sol, |
  dos-> r4 si r4 |
  la r4 sol r4 |
  fas r4 mi r4 |
  re r4 dos r4 |%T
  la-> r4 r4 dos |
  la-> r4 r4 dos |
  la-> re re dos |
  la-> r4 r4 re |
  mi r4 fas r4 |
  sol r4 si r4 |
  
  s1 * 12 |

  si'4-> ( la8--) sol8 fas mi re do |
  si do re2-> mi4 |
  do si \grace { la16 \(  si }  la4.\fermata \)\( sol8\) |
  sol4-. sol,-. sol-.|
  % Poco meno mosso
  \break % maybe this shouldn't be here, but I think it's ok
  re'' |
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
  sol2 re4( sol) |
  re->( do) do( sib) |
  sib8( la) la2 do8 mib |
  re4 do8 sib \grace {la16\( sib} la4.->  sol8 \) |
  sol2 \fermata r4 |
}

notesI = \relative do'{
  r4 |
  si'4 r4 r2 |
  r4 si si r4 |
  r4 la la r4 |
  r4 si si r4 |
  \partCombineApart
  re r4 re r4 |
  re r4 re r4 |
  \partCombineAutomatic
  r4 re sol sol |
  fas r4 r4 r4 |

  s1 * 16 |

  do4 r4 dos r4 |
  re r4 r4 re |
  mi4 mi fas fas |
  sol sol si si |
  do do dos dos |
  re r4 r4 \partCombineChords do, |

  r2 r4 do |
  r2 r4 do |
  r4 do r4 do |
  r4 do r4 do |
  r4\partCombineAutomatic la do re |
  fas la do r4 |

  %R1 * 14 |
  s1 * 38 |
  s2. |
}

notesII = \relative do'{
  r4 |
  re4 r4 r2 |
  r4 re re r4 |
  r4 re re r4 |
  r4 re re r4 |
  r4 fas la sol |
  r4 fas la sol |
  r4 la dos dos |
  re r4 r4 r4 | %S

  s1 * 16 |

  la4 r4 sol r4 |
  re' r4 r4 re |
  mi4 mi fas fas |
  sol sol si si |
  la la sol sol |%U
  re r4 r4 la, |

  r2 r4 la4 |
  r2 r4 la4 |
  r4 la r4 la |
  r4 la r4 la |
  r4 fas' la do |
  re fas la r4 |

  s1 * 38 |
  s2. |
}



% --- Three staves --- solo + I+II
%s4 |
%s1 * 8 |
% --- Two staves --- solo + tutti
%s1 * 16 |
% --- Three staves again --- solo + I+II
%s1 * 14 |
% --- One staff --- tutti
%s1 * 36 |

two_divisi_staves = {
  \twoStaves
  s4 |
  s1 *8|
  %2
  \twoStaves
  s1 *16 |
  \twoStaves
  s1 *12 |
  \oneStaff
  s1* 38 |

}


three_divisi_staves = {
  \twoStaves
  s4 |
  s1 *8|
  %2
  \oneStaff
  s1 *16 |
  \twoStaves
  s1 *12 |
  \oneStaff
  s1* 38 |
}

system_breaks = {
  % Same structure, but only skips + breaks
}

dynamicssolo = {
s4  \spicc \solo|
s4 \fp s2 s4 |
s1 *5 |
s1 \cresc |
s4 \f  s4 s4 s4 \p|
s1 *6 |
s4 s4 s4 \pizz s4 |
s1 \cresc |
s1*2 |
s1 \f \arco|
s1*2 |
s2. s4 \p |
s1*3 | 
s2. s4 \piup |
s1*3 | 
s2. s4 \pp |
s1 *6 |
s1 \ff \tutti|
s1 |
s4 s4 s4. \< s8 \! |
s4 \ffz s2 |
}

dynamicsI_II = {
s4 \pizz \div |
s4 \fp  \tutti s2 s4 |
s4 s4\pp s2 |
s1 *4 |
s4 s4 \cresc s2 |
s4 \f  s4 s4 s4 |
s1 \p |
s1 *6 |
s1 \cresc |
s1*2 |
s1 \f |
s1*2 |
s2. s4 \p |
s1*2 |
s1 \div |
s2. s4 \piup |
s1*3 |
s2. s4 \pp |
s1 * 6 |
s1 \ff \arco |
s1 |
s4 s4 s4. \< s8 \! |
s4 \ffz s2 |
s4 \p |
s1 *3|
s2. s4\mf |
s1
s1\> |
s1 |
s2 \pp s4 s4 \p |
s1 *3|
s2 s2\f |
s1 *3|
s2. s4 \p |
s1 * 8 |
s2 s2 \cresc |
s1 |
s2 s2 \ff |
s1 * 3 |
s2 s2 \p |
s1 * 3 |
s2. |

}

first_violin_solo = << \notes_solo \marks \dynamicssolo >>
first_violinI = << \notes \notesI >>
first_violinII = << \notes \notesII >>
first_violin_tutti = << \partCombine \first_violinI \first_violinII \marks \dynamicsI_II >>

first_violin_solo_conductor = {
  \new Staff \with {
    instrumentName = \solo_violin_name_long
    shortInstrumentName = \solo_violin_name_short
    \override VerticalAxisGroup.remove-empty = ##t
  }
  \first_violin_solo
}

first_violin_tutti_conductor = {
  \new Staff \with {
    instrumentName = \first_violin_name_long
    shortInstrumentName = \first_violin_name_short
    printPartCombineTexts = ##f
  }
  \first_violin_tutti
}

first_violin_rigaudon = \score {
  \header { piece = "V. Rigaudon" }
  
    \new GrandStaff \with {
      \override VerticalAxisGroup.remove-empty = ##t
      printPartCombineTexts = ##f
    }
    <<
      \new Staff \first_violin_solo
      \new Staff \first_violin_tutti
    >>
  
}

% \first_violin_rigaudon