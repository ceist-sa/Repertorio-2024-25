\version "2.24.4"
\language "portugues"

\include "../globals.ily"

notes = \relative {
  \compressEmptyMeasures
  \time 4/4
  \clef alto
  \key re \major
  <<
    {mi'4. 8 2 |}
    \addlyrics{Glo -- ri -- a}
  >>
  R1 |
  <<
    {
      <<
        {R1 |}
        \\
        \new CueVoice {
          \relative{
          \override TupletBracket.bracket-visibility = ##f
          r2^\markup{\tiny "Sopr. II"} \tupletDown \tuplet 3/2 {r8 si8 dos} \omit TupletNumber \tuplet 3/2 {re mi fas} 
          }
        }
      >>
    <<
        \new CueVoice {
          \override TupletBracket.bracket-visibility = ##f
          \tupletDown \tuplet 3/2 4 {r8^\markup{\tiny "Sopr. I"} mi fas \omit TupletNumber sols la si dos la si dos re mi}   
        }
        \\
        {R1 |}
      >>
      si4. 8 2 |
      2 2 |
      R1 |
      <<
        {
          \voiceTwo R1 |
          \voiceOne R1 |
        }
        \\
        \new CueVoice {
          \relative {
            \once \override Script.outside-staff-priority = #1 
            la'1\trill^\markup{\tiny "Sopr. I"} ~ |
            8. sols16 \tuplet 3/2 4 {\tupletDown fas8 mi res \omit TupletNumber mi sols la si dos re} |
          }
        }
      >>
      \break
      fas'4. 8 2 |
      4. re8 2 |
      R1 |
      <<
        \new CueVoice {
          \relative {
            \once \override Script.outside-staff-priority = #1 
            re''2.\trill^\markup{\tiny "Sopr. I"} ~ |
            \tuplet 3/2 4 { 8 fas8 mi \omit TupletNumber fas re dos re mi re dos si las si fas si } |
          }
        }
        \\
        {
          R1 |
          R1 |
        }
      >>
      re4 8 8 4 4 |
      sol,4. si8 mi si sol mi |
    }
    \new NullVoice{
      r2 r8 la8 4 |r8 8 4 4 4 | 4. 8 2 | 2 2 | r2. 4 | 1 | 4 4 4 4 | 4. 8 2 | 4. 8 2 | r2. 4 | 2. 4 | 4 4 4 4 | 4 8 8 4 4 | 4. 8 8 8 8 8 |
    }
    \addlyrics{
      glo - glo - - - - ri -- a Pa -- tri [glo] - - - - - - ri -- a Fi -- li -- o glo - - - - - - - ri -- a et Spi -- ri -- tu -- [i] 
    }
  >>
  dos si la4 ~ 8 sol fas mi |
  \break
  re1 |
  la'1\fermata | \bar "||"
  \time 3/4
  re8 la r4 r |
  la8 fas r4 r |
  fas8[ \startSinging re] r4 r |
  R2. |
  r8 re [fas la \stopSinging la fas] |
  re fas la re re la |
  fas \startSinging r r4 r |
  \break
  r8 la fas re ~ 8 la |
  la'8. sol16 fas4 r |
  R2. * 4 |
<<
    {
      R2. |
      R2. |
    }
    \\
    \new CueVoice {
      \relative {
        r8^\markup{\tiny "Viol. II"} \stemDown dos'16 re mi fas sol8 sol16 fas mi re |
        mi2. |
      }
    }
  >>
  <<
  {r8 fas,16 sol la (si) dos (si) re (dos) si (la) |}
  \addlyrics{
    et in saecu -- la sae -- cu
  }
  >>
  re'8 la r4 r |
  la8 fas r4 r |
  fas8 re r re la' re |
  re4 r8 re, la' re |
  fas,16 sol fas mi re8 la la' la |
  la fas re re la' sol |
  fas\fermata \stopSinging r4 r |
  \fine
}

viola = \notes

viola_gloria_patri = \score {
  \header { piece = "12. Gloria Patri" }
  \new Staff {
      % \viola %vanilla
    % \transpose fa do' <<\viola \clef treble>> %violin
    \transpose sib do' <<\viola \clef treble>> %clarinet
  }
}