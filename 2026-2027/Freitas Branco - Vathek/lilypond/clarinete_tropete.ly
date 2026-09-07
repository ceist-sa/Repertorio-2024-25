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



cla_trompa_Epilogo =  {  %\transpose do sol

    \mark \markup \center-align { \bold "Epílogo" }
    \relative do'{
        \time 4/4 \tempo "Lento"  \key do \major
        \compressEmptyMeasures
          
               
          R1 * 54| 
          R1 \fermata \bar "||"

          <re fas >1 \f|
          <fas sol> |
          <fas la> |
          <sol si > |
          R1 *4 |
          <re fas> \f |
          <fas sol> |
          <fas la > |
          <sol si > | 
          R1 *14 |


          <la~ re~>1 \ff |
          <la~ re~>1 |
          <la re>4 r4 r2 | \bar "||"
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
        title = "CLARINET - Trompete"
        %instrument = \clarinet_corne_ingles_name_long
    }

    \header {
        title = "Vathek"
        subtitle = "Clarinete Sib - Trompete"
        composer = "Luís de Freitas Branco"
    }


    \cla_trompa_Epilogo
    

}

\layout {


}
