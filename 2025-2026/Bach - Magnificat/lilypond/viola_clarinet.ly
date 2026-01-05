\version "2.24.4"
\language "portugues"

\include "../../../styles/style_part.ily"

\include "01-magnificat/viola.ily"
\include "02-et-exsultavit/viola.ily"
\include "04-omnes-generationes/viola.ily"
\include "06-et-misericordia/viola.ily"
\include "07-fecit-potentiam/viola.ily"
\include "12-gloria-patri/viola.ily"

\layout {
    \context {
        \Staff
        \override MultiMeasureRest.expand-limit = #20
    }
}

\paper {
    scoreTitleMarkup = \markup {
        \vspace #1.5
        \column{
            \line{ \fontsize #2 \fromproperty #'header:piece \tiny  \fromproperty #'header:performer }
            \tiny \justify{ \fromproperty #'header:pieceSubTitle }
        }
    } 
    ragged-bottom = ##f
    ragged-last-bottom = ##t
} 

\bookpart {
    \header {
        instrument = "Viola (Clarinete em Si♭)"
        filename = "VIOLA (CLARINET) - Bach - Magnificat"
        title = "Magnificat in D Major"
        composer = "Johann Sebastian Bach"
        opus = "BWV 243"
    }

    \score {
        \header { 
            piece = "1. Magnificat"
            pieceSubTitle = "Magnificat anima mea Dominum." 
        }
        \new Staff {
            \transpose sib do' <<\viola_magnificat \clef treble>>
        }
    }

    \score {
        \header { 
            piece = "2. Et exsultavit spiritus meus" 
            pieceSubTitle = "Et exsultavit spiritus meus in Deo salutari meo."
            performer = "⟨Soprano II – Solo⟩"
        }
        \new Staff {
            \transpose sib do' <<\viola_et_exsultavit \clef treble>>
        }
    }

    \pageBreak

    \markup {
        \vspace #1.5
        \column{
            \line{ \fontsize #2 "3. Quia respexit humiliatem" \tiny  "⟨Soprano I – Solo⟩: "  \fontsize #2  \italic "tacet" }
            \tiny "Quia respexit humiiliatem ancillae suae: ecce enim ex hoc beatam me dicent"
        }
    } 

    \score {
        \header { 
            piece = "4. Omnes generationes"
            pieceSubTitle = "Omnes generationes."
        }
        \new Staff {
            \transpose sib do' <<\viola_omnes_generationes \clef treble>>
        }
    }

    \pageBreak

    \markup {
        \vspace #1.5
        \column{
            \line{ \fontsize #2 "5. Quia fecit mihi magna" \tiny  "⟨Basso – Solo⟩: "  \fontsize #2  \italic "tacet" }
            \tiny "Quia fecit mihi magna qui potens est, et sanctum nomen eius."
        }
    } 

    \score {
        \header { 
            piece = "6. Et misericordia"
            pieceSubTitle = "Et misericordia a progenite in progenies timentibus eum."
            performer = "⟨Alto – Solo e Tenore – Solo⟩"
        }
        \new Staff {
            \transpose sib do' <<\viola_et_misericordia \clef treble>>
        }
    }

    \pageBreak

    \score {
        \header { 
            piece = "7. Fecit Potentiam" 
            pieceSubTitle = "Fecit Potentiam in bracchio suo, dispersit superbos mente cordis sui."
        }
        \new Staff {
            \transpose sib do' <<\viola_fecit_potentiam \clef treble>>
        }
    }

    \markup {
        \vspace #1.5
        \column{
            \line{ \fontsize #2 "8. Deposuit potentes" \tiny  "⟨Tenore – Solo⟩: "  \fontsize #2  \italic "tacet" }
            \tiny "Deposuit potentes de sede et exaltavit humiles."
        }
    } 

    \markup {
        \vspace #1.5
        \column{
            \line{ \fontsize #2 "9. Esurientes implevit bonis" \tiny  "⟨Alto – Solo⟩: "  \fontsize #2  \italic "tacet" }
            \tiny "Esurientes implevit bonis et divites dimisit inanes."
        }
    } 

    \markup {
        \vspace #1.5
        \column{
            \line{ \fontsize #2 "10. Suscepit Israel" \tiny  "⟨Soprano I, II ed Alto⟩: "  \fontsize #2  \italic "tacet" }
            \tiny "Suscepit Israel puerum suum recordatus misericordiae suae."
        }
    } 

    \markup {
        \vspace #1.5
        \column{
            \line{ \fontsize #2 "11. Sicut locutus est:" \fontsize #2 \italic "tacet" }
            \tiny{"Sicut locutus est ad Patres nostros, Abraham et semini eius in saecula."}
        }
    } 

    \pageBreak

    \score {
        \header { 
            piece = "12. Gloria Patri" 
            pieceSubTitle = "Gloria Patri, gloria Filio, gloria et Spiritui sancto! Sicut erat ni principio et nunc et semper et in saecula saeculorum. Amen."
        }
        \new Staff {
            \transpose sib do' <<\viola_gloria_patri \clef treble>>
        }
    }
}



