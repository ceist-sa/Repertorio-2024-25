\version "2.24.4"
\language "portugues"
%include "../../../styles/style_part.ily"
%\include "../../../styles/ranges.ily"
%\include "globals.ily"
%\include "instrument_names.ily"

clarinet_trompa_name_long = "Clarinete em Si♭"
clarinet_trompa_name_short = "Cl. "


\paper {
  oddHeaderMarkup = \markup {
    \unless #on-first-page \fill-line {
      \fromproperty #'header:instrument
    }
  }
  evenHeaderMarkup = \markup {
    \unless #on-first-page \fill-line {
      \fromproperty #'header:instrument
    }
  }
}



cla_trompa_Epilogo =  \transpose do sol { 

    \mark \markup \center-align { \bold "Epílogo" }
    \relative do{
        \time 4/4 \tempo "Lento"  \key do \major
        \compressEmptyMeasures

        <<
        {
          \voiceOne
               
          R1 * 54| 
          R1 \fermata \bar "||"

          < mi sols >1 \f|
          <fas dos'> |
          <sols si> |
          <re la' > |
          <fas dos' > | 
          r1 |
          <fas dos'> |\break
          r1 |
          <mi sols> \f |
          <fas dos'> |
          <sols si > |
          <re la' > | 
          <dos dos'> 
          <fas fas,> \break
          r1 |

          s1 *5 |      

          r1 | 
          r4 r8^"a2" dos4 fas dos'8~|
          dos fas,4 dos fas dos'8 ~|
          dos8 fas,4 dos fas dos'8| \break
          mi4 r4 r2 |
          r1 |
          <mi,~ la~>1 \ff |
          <mi~ la~>1 |
          <mi la>4 r4 r2 \bar "||"
          }
        
        \\
        {
          \voiceTwo

          s1 *70 |  
          re'4 mi re la |
          \stemDown sols la sols fas |
          sols la sols fas |
          sols la sols fas | 
          sols la sols fas |
          s1 *9 \bar "||"  
        }

       {
        \voiceThree
          s1 *70 |  
          la2. mi4 | 
          dos'1 | 
          dos1 | 
          dos 1| 
          dos 1|  
          s1 *9 \bar "||"  
       } 
        >>
    }
}

    

cla_trompa_Prologo= \transpose do sol{  

    \mark \markup \center-align { \bold "Prólogo" }

    \relative do{
        \time 4/4 \tempo "Adagio"  \key do \major
        \compressEmptyMeasures
                
                
        r2 \fermata  \bar "||"

        }
}

\bookpart {
    \header {
        title = "CLARINET - Trompa"
        %instrument = \clarinet_corne_ingles_name_long
    }

    \header {
        title = "Vathek"
        subtitle = "Clarinete Sib - Trompa"
        composer = "Luís de Freitas Branco"
    }


    \cla_trompa_Epilogo
    

}

\layout {


}
