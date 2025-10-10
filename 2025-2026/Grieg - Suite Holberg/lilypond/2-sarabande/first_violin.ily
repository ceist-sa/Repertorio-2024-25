\version "2.24.4"

\include "../instrument_names.ily"
\include "../globals.ily"
\include "globals.ily"

\language "português"

notes = \relative do'{
  \set Staff.midiInstrument = #"violin"
  \clef treble
  \key sol \major
  R2.*4 |
  do8(re16 mi) re4.(mi8)|
  mi8(fas16 sol) fas8 sol la(re)|
  re,8-- [sol8--] fas8(mi8) mi8(re8)|
  re4 re4(re8) r8 |
  %repeat
  si'8(dos16 re) dos8(si4 dos8)|
  \grace{las16( si} las->) sols fas8-. fas8-- r8 r4 |
  si8( dos16 re) re8(dos) dos-.(las-.) |
  \grace{ las16\p( si} las->) sols fas8-. fas8-- r8 r4 |

  R2. |
  r4 r4 r8 fas8 |
  fas16( la) la sol fas8( mi) re dos |
  dos( re) re2 |

  %F
  R2.*5|
  s2.*7
  fa8( sol16 la) sol4.( la8) |
  la8( si16 do) si8 do re(sol) |
  sol,-- [do--] si( la) la( sol) |
  sol4 sol( sol8) r8 |

}

notesI = \relative do'{
  s2.*21
  r4 r8 do'8 do do|
  do do do dos dos re |
  re mi mi fas fas sol |
  sol( la) la4.(si8) |
  si do16 re do8(si) si4 |
  sol8 la16 si la8( sol) fas( mi)|
  \grace{fas16( sol} fas) mi re8 re4(re8) r8|
  s2.*4
}

notesII = \relative do'{
  s2.*21
  r4 r8 do8 do do|
  do do do dos dos re |
  re mi mi fas fas sol |
  sol( la) la4.(si8) |
  si do16 re do8(si) si4 |
  sol8 la16 si la8( sol) fas( mi)|
  \grace{fas16( sol} fas) mi re8 re4(re8) r8|
  s2.*4
}


staves = {
  \oneStaff
}


dynamics = {
  s2. * 4 |
  s2. \p|
  s2. \cresc |
  s2. \f |
  s4\> s4 s8\! s8|
  % repeat bar
  s2. \p |
  s2. |
  s4 \< s8\f s8\> s8 s16 s16\!|
  s2. |
  s2.|
  s4 s4 s8 s8\mf  |
  s2 s8 s8\> |
  s8\> s8\! s2 |
  %F
  s2. * 5 |
  s2 s8 s8\p |
  s2.  \cresc|
  s2.\< |
  s4\f s2\< |
  s2. \ff |
  s2. |
  s4 s4 \> s8\! s8|
  s2. \pp |
  s2. \crescmolto |
  s2. \f |
  s4 s4\> s8\! s8|
}
first_violin = << \partCombine << \notes \notesI>> <<\notes \notesII >> \marks \dynamics >>
first_violinI = <<\notes \notesI \marks \dynamics>>
first_violinII = <<\notes \notesII \marks \dynamics>>

first_violin_conductor = {
  \new Staff \with {
    instrumentName = \first_violin_name_long
    shortInstrumentName = \first_violin_name_short
    printPartCombineTexts = ##f
  }
  \first_violin
}

first_violin_sarabande = \score {
  \header { piece = "II. Sarabande" }
  
    \new GrandStaff \with {
      \consists "Keep_alive_together_engraver"
    }
    <<
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \first_violinI \staves >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \first_violinII \staves >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-layer = 2
        printPartCombineTexts = ##f
      }
      << \first_violin >>
    >>
  
}

% \first_violin_sarabande