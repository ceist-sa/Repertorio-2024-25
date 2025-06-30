\version "2.24.4"
\include "../../styles.ily"
\include "globals.ily"
\include "oboe_solo.ly"
\include "violin1.ly"
\include "violin2.ly"
\include "viola1.ly"
\include "viola2.ly"
\include "clarinets.ly"
\include "cello.ly"
\include "flutes.ly"

\book {
    \paper {
        #(set-paper-size "b4")
        indent = 1.5\cm
        short-indent = 0.2\cm
        system-count = 8
        ragged-last-bottom = ##f
        ragged-bottom = ##f
    }
    \header {
        filename = "Bach - Cantata nº 12 - GERAL"
    }
    \score {
        <<
            \new Staff \with {
                instrumentName = "Oboé solo"
                shortInstrumentName = "Ob."
            } {
                <<\oboeSolo \marks>>
            }

            \new StaffGroup <<    
                \new Staff \with {
                    instrumentName = \markup{\column{"Flauta I" "Flauta II"}}
                    shortInstrumentName = \markup{\column{"Fl. I" "Fl. II"}}
                } {
                    \partCombine <<\fluteI \marks>> <<\fluteII \marks>>
                }
                
                \new GrandStaff <<
                    
                    \new Staff \with {
                        instrumentName = \markup{\column{"Clarinete I" "Clarinete II"}}
                        shortInstrumentName = \markup{\column{"Cl. I" "Cl. II"}}
                    } {
                        \transposition sib
                        \partCombine
                        \transpose do re {
                            <<\clarinetI \marks>>
                        }
                        \transpose do re {
                            <<\clarinetII \marks>>
                        }
                    }
                    \new Staff \with {
                        instrumentName = "Clarinete III"
                        shortInstrumentName = "Cl. III"
                    } {
                        \transposition sib
                        \transpose do re {
                            <<\clarinetIII \marks>>
                        }
                    }
                >> 
            >>

            \new StaffGroup <<
                \new GrandStaff <<
                    \new Staff \with {
                        instrumentName = "Violino I"
                        shortInstrumentName = "Vln. I"
                    } {
                        <<\violinI \marks>>
                    }
                    \new Staff \with {
                        instrumentName = "Violino II"
                        shortInstrumentName = "Vln. II"
                    } {
                        <<\violinII \marks>>
                    }
                >>
                \new GrandStaff <<
                    \new Staff \with {
                        instrumentName = "Viola I"
                        shortInstrumentName = "Vla. I"
                    } {
                        <<\violaI \marks>>
                    }
                    \new Staff \with {
                        instrumentName = "Viola II"
                        shortInstrumentName = "Vla. II"
                    } {
                        <<\violaII \marks>>
                    }
                >>
                \new Staff \with {
                    instrumentName = "Violoncelo"
                    shortInstrumentName = "Vcl."
                } {
                    <<\cello \marks>>
                }
            >>
        >>
        \layout {}
        \midi{ \tempo 8 = 68 }
    }
}