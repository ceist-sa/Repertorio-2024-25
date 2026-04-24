\version "2.24.4"
% \include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

clarinetIII_overture = \score {
    \header { piece = "Overture" }
    \new Staff 
      \transpose bes, c
      \compressMMRests {
        \key es \major
        \clef treble
        \time 2/2
        \relative  c'
        
        {
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
          \fine
        }
    }
}

clarinetIII_introduction = \score {
  \header { piece = "No. 1 Introduction" }
  \new Staff 
    \transpose bes, c
    \relative c'
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
    | f4 r r2 | R1 | R | R | es\p ~ | es~ |
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
    \fine
    % 218
    
  }
}

% N9
clarinetIII_IX_marcia = \score {
  \header {
    piece = "No 9 Marcia"
  }
  
  \new Staff 
    \transpose bes, c
    \relative c'
    \compressMMRests
  {
    \key f \major
    \clef treble
    \time 2/2
    
    \repeat volta 2 {
    | f2 c | a2 r | R1
    | g'2 a | g r4 g | f2 r4 f
    | e a g f | f2( e4) r |
    }
    \repeat volta 2 {
    | c1 | c2. f4 | bes, c d d, % TODO: este pitch é possível no clarinete 
    | d2 r4 c' | a' g f r
    | r2 r4 a | g r d r 
    % 16
    | c2 r | f c a r
    | R1 | R1
    | e'2 r | c2 r
    % 23
    | R1*4 | r2 r4 g'8 r | g2 f4 r
    }
    \fine
  }
}

% N9
clarinetIII_X_aria = \score {
  \header {
    piece = "No. 10 Aria"
  }
  
  \new Staff 
    \transpose bes, c
    \relative c'
    \compressMMRests
  {
    \key f \major
    \clef treble
    \time 3/4
    
    \tempo \markup "Adagio"
    
    | a2( g4 f2 bes4) | e,4.( f8) g4 | f2 r4
    | a2 r4 | c2 r4 | c4( d g,)
    | c2 g4 | g2. ~ g ~ g
    | f4 c'-.( c-.) | d2. | d4-.( d-. d-.)
    | d2. ~ | d4 c-.( c-.) | e2. | a, | g2( b4)
    % 20
    | b4( c) r | c-.( c-. c-.) | c2( a4 | g2 f4)
    | e4 r r | c'( b a) | gis( a) a | g!2( f4) | e2 r4
    % 29
    | R2. | d2. | a'( | a4) g-.( g-.) | g2. |
    | r4 f'( c) | r aes( f) ~ | f( e) r | c'2 r4
    % 38
    | r4 d-.( d-.) | e2 r4 | r f-.( f-.) | c2.(
    | d) | c2( e4) | e( f) r | f-.( f-. f-.) | f2( d4)
    % 47
    | c2( bes4) | a-.( a-. a-.) | a2.( a4 bes) bes
    | a2( g4) | f c'-.( c-.) | d2. | a2( bes4) | a2 r4
    \fine
  }
}

% N12 Quintetto
clarinetIII_XII_quintetto = \score {
  \header {
    piece = "No. 12 Quintetto"
  }
  
  \new Staff
    \transpose bes, c
    \relative c''
    \compressMMRests
  {
    \key bes \major
    \time 2/2
    \clef treble
    \tempo \markup "Allegro"
    
    | R1*148
    <<
      {
        \new CueVoice \with { instrumentCueName = "Fl." }
        {
        | r4 r8 g' <e c'>4 r8 <c a'> 
        | <b g'>4 r8 <d b'> <c a'>4 r8 <a f'>
        | <b g'>4
        \new CueVoice \with { instrumentCueName = "Ob." }
        {
          g2 g4
        | es'2 d2
        | c4 g2 g4 
        | es'2 d2
        }
        }
      } \\
      {
      | R1*6
      }
    >>
    % 155
    | c1\ff | c2 c | e,1 ~ | e4 r r2
    | R1*6 |
    \once \set Staff.caesuraType = #'((underlying-bar-line . "||"))
    \caesura^\fermata
    \fine
  }
}

% N14 Aria
clarinetIII_XIV_aria = \score {
  \header {
    piece = "No. 14 Aria"
  }
  
  \new Staff
    \transpose bes, c
    \relative c''
    \compressMMRests
    {
      \key bes \major
      \time 4/4
      \clef treble
      \tempo \markup "Allegro assai"
      
    | R1 | d | R | r2 a | R1
    | r2 d |
    | R1*55 |
    <<
      {
        \new CueVoice \with { instrumentCueName = "Cor." }
        {
        | g,2 r2 | R1 | g2 r2
        }
        \new CueVoice \with { instrumentCueName = "Fl." }
        {
        | f'2( d | b e) | a,4 s2. |
        }
      } \\
      {
      | R1*5
      | r4 a2\sf a4
      }
    >>
    | R1*12
    <<
      { \new CueVoice 
          \with { instrumentCueName = "Fl."} 
          { | es'1 ~ | es2.( d4) | cis s2. }
      } \\
      {
      | R1*2
      | r4 \oneVoice a\f a r 
      }
    >>
    | r a a r
    | r a a r
    | R1*2
    | a2 r2\fermata
    | r2 d\f
    | r2 d
    | R1*3
    | r2 r4 r8. d16 
    | d2 r
    | R1*1
    | r2 a
    | d8 d d d d d d d
    | d4 r a r
    | d2 r2
    \once \set Staff.caesuraType = #'((underlying-bar-line . "||"))
    \caesura^\fermata
    \fine
    }
}

\paper {
  ragged-right = ##f
  scoreTitleMarkup = \markup {
      \column {
        \left-column { \medium \fontsize #2 \fromproperty #'header:piece }
        \vspace #1
      }
    }
}

\layout {
  indent = 0
}

\bookpart {
    \header {
        filename = "Mozart - Flauta Mágica - Clarinet III"
        instrument = \clarinet_III_name_long
    }
    \clarinetIII_overture
    \clarinetIII_introduction
    \clarinetIII_IX_marcia
    \clarinetIII_X_aria
    \clarinetIII_XII_quintetto
    \clarinetIII_XIV_aria
}