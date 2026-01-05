\version "2.24.4"
\language "portugues"

\include "../globals.ily"

startTen = ^\markup{\tiny "⟨⟨Tenor"}
endTen = ^\markup{\tiny "⟩⟩"}

notes = \relative {
  \compressEmptyMeasures
  \time 4/4
  \clef alto
  \key re \major


  r4\startSinging r8  sol'8 re sol si,8. si16 |
  mi4 r8 mi8  re sol si,8. si16 |
  mi4 r4 r2|
   <<
        \new CueVoice {
            \stemUp
            \relative {si'8^\markup{\tiny "Ten."}  la16 sis sol8 la si sol16 si dos8 la16 dos| re8}
        }
        \addlyrics{
          - ti - am in brac _ _ - chi-o  _ su- _
        }
        \\
        {R4 R4 R4 R4 | r4}
    >>

    r8 re'8 la re fas,8. fas16| 
    \break
    si4 r8 si8 la re fas,8. fas16 | 
    si4 r4 r2|

  <<
        \new CueVoice {
            \stemUp
            \relative {fas'8^\markup{\tiny "Alto"}  mi16 fas re8 re fas do16 mi fas8 re16 fas| sol8}
        }
        \addlyrics{
          - ti - am in brac _ _ - chi-o  _ su- _
        }
        \\
        {R4 R4 R4 R4 | r4}
    >>
    r8 sol8 re sol si,8. si16| 
    mi4 r8 mi8 re sol si,8. si16| 
    \break
    mi4 r4 r2 |
    r1 |
    r4 r8 re'8 la re fas,8. fas16| 
    si4 r8 si8 la re fas,8. fas16 |
    si4 r4 r2 | 
    r1 |
    r4 r8 la8 mi la dos,8. dos16|
    \break
    fas4 r8 fas8 mi la dos,8. dos16|
    fas4 r4 r2 |
    r1 | 
    r8 fas16 sol la8 re8 re,8. re16 re4 |
    r8 re8 sol si la8. re,16 re8 fas8 |
    si,8 sol' re si r8 si' dos, mi |
    \break
    r8 la8 re sol, r8 la sols si |
    r8 dos, fas fas, r8 si mi mi, |
    r8 si' mi dos fas r8 r8 re' |
    si sol r4 r16 la,16 dos mi la mi dos mi | 
    \break
    la16 mi dos mi la mi la dos sols8 sols r4 |
    r4^\markup{ "adagio"}  fas2 fas4 |
    si2 sols4 si,8( dos) |
    re4( mi8 fas) dos4 las' |
    fas4 fas2 sol4 |
    dos,2 si8( dos re si) |
    mi4  la8 si dos2 | 
    la1 \fermata \stopSinging | 

  \fine
}

viola = \notes

viola_fecit_potentiam = \score {
  \header { piece = "7. Fecit Potentiam" }
  \new Staff {
      \viola %vanilla
    %\transpose fa do' <<\viola \clef treble>> %violin
    % \transpose sib do' <<\viola \clef treble>> %clarinet
  }
}