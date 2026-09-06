\version "2.24.4"
\language "portugues"
%include "../../../styles/style_part.ily"
%\include "../../../styles/ranges.ily"
%\include "globals.ily"
%\include "instrument_names.ily"

clarinet_corne_ingles_name_long = "Clarinete em Si♭"
clarinet_corne_ingles_name_short = "Cl. "


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



cla_corn_ingl_Epilogo = \transpose do sol {  



        \mark \markup \center-align { \bold "Epílogo" }
    \relative do{
        \time 4/4 \tempo "Lento"  \key do \major
        \compressEmptyMeasures
               
        R1 * 2|
        r4 la'8. \p \< ( res16 mi4 \> res4)|
        la8. \< ( res16 \! \tuplet 3/2 {mi8 res la } sol4 \< la4 \!)|
        R1 * 14|
        la8. \mf \< ( res16 \tuplet 3/2 {mi8 res la } sol4 \!  la4\> )|
        r4\! la8. \( res16 mi4 res4(  |
        re4) \) \dim la2( sol4 |
        fa4 ) sol4 \tenuto fa \tenuto si, \tenuto \!|
        R1 * 8|
        sol''2. ( do,4 |
        sib2 reb) |
        R1 * 10|
        r4 \mf la8. \< ( res16 mi4 \> res4)|
        la8.\< ( res16 \! \tuplet 3/2 {mi8 res la } sol4 \> la4 \!)|
        R1 * 39|
        R1 \bar "||"}
}



cla_corn_ingl_Prologo =\transpose do sol{  

    \mark \markup \center-align { \bold "Prólogo" }

    \relative do{
        \time 4/4 \tempo "Adagio"  \key do \major
        \compressEmptyMeasures
                
        la'1 \p |
        la2 \( ( la32) las si do dos re res mi fa mi mib re reb do si sib  \)| \break
        la1 |
        la2 \( ( la32) lab sol solb fa mi mib re dos re res mi mis fas sol sols  \) | \break
        la2 \( ( la4~ ) la32 las si do dos do si sib  \) |
        la2 \( ( la4~ ) la32 lab sol fas fa fas sol sols  \) |\break
        la4.. ( sols32 sib) la4.. ( sols32 sib)| 
        la1 \p | 
        la1 \p \fermata |
        r1 \fermata  \bar "||"
        
        
        \time 2/4 \tempo "Moderato"
        R2 * 8| 
        r8 las4 \p \( si8 (|
        si8 ) \) mib4( reb8 | \break
        do8) fas,4\(  sol8 ( | 
        sol8 ) \)  si4 ( la8 |
        sols8) dos, \cresc (  sol' si |
        do8 dos fas4) \! | 
        r8 si,8 r8 re, ( |
        re2 ) |
        si8 \f r8 r4 |

        R2 * 11|

        mib'2 \f \( |
        mi8 \) re4 \( reb8( | \break
        reb )\) do4 \( si8 ( |
        si \> ) \) sib4 \(  la8 (|
        la2 \mf \< ) ( |
        la8 ) \) 
        lab4 \f  \( sol8 ( |
        sol)\) fas4\> \( fa8 \!( | \break
        fa8)\)  mi4 \( mib8 ( |
        mib8 ) \) re4 \(  reb8 ( |
        reb8 \p ) \) r8 r4 |
        

        R2 * 7|
        r2 \fermata |

        la'8 \mf ( res mi16 res sib la| \break
        mi4 res4 ) |

        R2|
        
        r2 \fermata |
        
        r2 \fermata |
        
        r2 \fermata  \bar "||"

        }
}

\bookpart {
    \header {
        title = "CLARINET - Corne Ingles"
        %instrument = \clarinet_corne_ingles_name_long
    }

    \header {
        title = "Vathek"
        subtitle = "Clarinete Sib -Corne Inglês"
        composer = "Luís de Freitas Branco"
    }


    \cla_corn_ingl_Epilogo
    

    \cla_corn_ingl_Prologo

}

\layout {


}
