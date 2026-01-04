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
  r8^\markup { \huge \char ##x2308 } dos'16 si la dos si la sols8 sols' sols dos |
  fas, la,16 si dos si dos re sols,8 la16 si dos mis fas sols |
  \break
  la8 dos, fas4 sols r |
  <<
    {
      dos,8\startTen 8 8 8 8 si16 la sols8 dos |
      la [fas16\endTen sols]
    }
    \addlyrics{
      o -- mnes, o -- mnes ge -- ne _ -- ra -- ti -- o -- nes
    }
  >>
  la sols la si dos4 ~16 si la sols |
  \break
  fas8 r r4
  <<
    {
      si'8\startTen 8 8 8 |
      si [la16 sols fas8 mi] re\endTen [sols]
    }
    \addlyrics{
      [o]- -- mnes, o -- mnes ge -- ne _ -- ra -- ti -- o
    }
  >> r fas, |
  dos' mi r dos [la re] r fas |
  \break
  si, mi r mi16 re dos8 fas si,4 |
  dos8 mi la mi ~ 16 fas sols la si8 si, |
  la16 si dos re mi re mi fas sols4 r |
  \break
  <<
    {si8\startTen 8 8 8 8 fas16 mi}
    \addlyrics{
      O -- mnes, o -- mnes ge -- ne _
    }
  >> re8 dos |
  si\endTen fas r si fas' dos r fas |
  dos fas r4 <<
    {
    dos8\startTen 8 8 8 | \break
    dos8 si16 la sols8 fas mis\endTen
    }
    \addlyrics{
    o -- mnes, o -- mnes ge -- ne _ -- ra -- ti -- o
    }
    >>
    dos' r dos |
  dos la' r fas mi sols r si, |
  dos fas r4 <<
    {
      re8\startTen 8 8 8 |
      \break
      re dos16 si la8 sol! fas\endTen si16 las si4 ~ |
      8 mi16 fas sols mi fas sols la8\startTen 8 8 8 |
      la sols16 fas mi8 res dos\endTen fas4 sols16 fas |
      \break
      mis4
    }
    \addlyrics{
      o -- mnes, o -- mnes ge -- ne _ -- ra -- ti -- o _ _ _ _ _ _ _ _ _ _  -- nes, o -- mnes ge -- ne _ -- ra -- ti -- o _ _ _  -- nes,}
    >> r dos r |
    dos r dos r |
    mis r sols r |
    si2\fermata
    <<
      \new CueVoice{
        \autoBeamOff
        \stemUp
        \relative{
          % Force the fermata to be closer to the note than the text
          \once \override Script.outside-staff-priority = #100
          \once \override TextScript.outside-staff-priority = #500
          si'4 \fermata ^\markup{\tiny "Sopr. I"} 8 * 1/2 8 * 1/2 8 * 1/2 8 * 1/2 |
          si8 la16 [sols] la8 si dos dos
        }
      }
      \addlyrics{
        nes, o -- mnes, o -- mnes ge -- ne -- ra -- ti -- o -- nes,}
        \\
        {r2 | \break r2 r4 }
      >>
      r16 si la sols |
      fas8 dos fas dos dos dos dos sols |
      la8. sols16 sols8 dos, dos2\fermata \stopSinging |
      \fine
    }

    viola = \notes

    viola_omnes_generationes = \score {
      \header { piece = "4. Omnes generationes" }
      \new Staff {
        % \viola %vanilla
        \transpose fa do' <<\viola \clef treble>> %violin
        % \transpose sib do' <<\viola \clef treble>> %clarinet
      }
    }