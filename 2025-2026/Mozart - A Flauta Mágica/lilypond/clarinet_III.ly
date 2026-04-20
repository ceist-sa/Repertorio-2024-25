\version "2.24.4"
% \include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

clarinetIII_overture = \score {
    \header { piece = "Overture" }
    \new Staff \transpose bes c' \compressMMRests {
        \key es \major \clef treble \time 2/2
        \relative  c' {
            \tempo \markup "Adagio"
            | R1*7 |
            <<
              {
                \voiceTwo
                 | R1 | r4 aes-.( aes-.) r |
                 | R1 | r4 a-.( a-.) r | 
                 | R1 | r4 d2 r4 | r4 es2 r4 |
                 | r4 f r es |
              }
              \\
              {
                \new CueVoice \with { instrumentCueName = "Vio. I" } {
                  \voiceOne
                  | aes4 r8. aes16( g4) r8. g16( |
                  | f2) r4 g( | aes) r8. aes16( ges4) r8. ges16( |
                  | f2) r4 g!4( | aes4) r8. aes16( a4) r8. a16( |
                  | bes2) r2 |
                  | s1*2 |
                }
              }
            >>
           
            \bar "||"
            \tempo \markup "Allegro"
            | es4 r r2 |
            | R1*18 |
            \new CueVoice \with { instrumentCueName = "Fag." } {
              | bes8\p bes es es aes, aes d\f d |
              | bes8\p bes es es aes, aes d\f d |
            }
            
            % 37
            | bes,1\p ~ | bes | es | f | g | f | 
            | es4 g f2 | bes4 r r2 | g4 r f g |
            | es2 f | g4 g f2 | R1 |
            | r2 f4 g | f2\sf f\sf |
            | f1 ~ | f4 f g g | f r r2 |
            % 54
            | g1 | f4 r r2 | g1 | f4 r r2 |
            | R1*7 |
            \new CueVoice \with { instrumentCueName = "Fl." } {
              | r8 es''( c a f es c' es,) | d4 r4 r2 |
              | r8 es'( c a f es c' es,) |
            }
            % 68
            | bes,8 8 8 8 4 r4 | R1 | R1 |
            % 71
            | r4 bes2 4 | es r f r | g r f r |
            | f1~ | f1~ | f1~ | f1 |
            % 78
            | bes,8 8 8 8 4 r | R1 | R1 | 
            | r4 bes2 4 | es r f r | g r f r |
            | R1*4 | f1~ | f1 |
            % 90
            | f2 g | f f | f4 r bes, r |
            | bes r bes r | bes4 4 4 4 | 
            | bes r bes bes | bes1\fermata |

            % 97
            \bar "||"
            \tempo \markup "Adagio"
            | R1 | R1\fermata | R1 | R1\fermata | R1 | R1\fermata |
            
            % 103
            \bar "||"
            \tempo \markup "Allegro"
            | R1*10 |
            \bar "|."
        }
    }
}

clarinetIII_introduction = \score {
  \header { piece = "No1. Introduction" }
  \new Staff 
    \transpose es c'
    \relative c
    \compressMMRests {
    
    \key es \major \clef treble \time 4/4
    
    \tempo \markup "Allegro"
    | R1*38 | 
    \new CueVoice \with { instrumentCueName = "Cl. I" } {
      | g''4\f 8. 16 4 8. 16 |
    }
    % 40
    | es2\f 4. 8 | 4 4 4 4 | bes2.\fermata 8. 16 |
    | es4 bes4 es4 bes4 | es r r es8. 16 | f4 g f g | 
    % 46
    | f4 r r2 | R1 | R | R | es,\p ~ | es~ |
    % 52
    | es~ | es ~ | es4 r4 r2 | R1 | R1 | bes'1 | es,4 r r2 | R1 |
    % 60
    | R | bes' | es,4 r r2 |
    % 70
    | R1*54 |
    \bar "||"
    
    % 120
    \tempo \markup "Allegretto"
    \key g \major
    \time 6/8
    | R2.*33 |
    \bar "||"
    
    % 153
    \tempo \markup "Allegro"
    \key c \major
    \time 2/2
    | R1*65 |
    \bar "|."
    % 218
    
  }
}

\bookpart {
    \header {
        filename = "Mozart - Flauta Mágica - Clarinet III"
        instrument = \clarinet_III_name_long
    }
    \clarinetIII_overture
    \clarinetIII_introduction
}