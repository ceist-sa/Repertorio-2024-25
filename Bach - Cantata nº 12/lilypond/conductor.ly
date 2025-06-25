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
\include "woodwinds.ly"

\book {
    \paper {
        indent = 2\cm
        short-indent = 1\cm
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
            \new GrandStaff <<
                \new Staff \with {
                    instrumentName = "Clarinete I"
                    shortInstrumentName = "Cl. I"
                } {
                    \transposition sib
                    \transpose do re {
                        <<\clarinetI \marks>>
                    }
                }
                \new Staff \with {
                    instrumentName = "Clarinete II"
                    shortInstrumentName = "Cl. II"
                } {
                    \transposition sib
                    \transpose do re {
                        <<\clarinetII \marks>>
                    }
                }
            >>
            \new StaffGroup <<
                \new Staff \with {
                    instrumentName = "Flauta I"
                    shortInstrumentName = "Fl. I"
                } {
                    <<\fluteI \marks>>
                }
                \new Staff \with {
                    instrumentName = "Flauta II"
                    shortInstrumentName = "Fl. II"
                } {
                    <<\fluteII \marks>>
                }
                %{ \new Staff \with {
                    instrumentName = "Flauta III"
                    shortInstrumentName = "Fl. III"
                } {
                    <<\fluteIII \marks>>
                }
                \new Staff \with {
                    instrumentName = "Oboé"
                    shortInstrumentName = "Ob."
                } {    
                    <<\oboe \marks>>
                } %}
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
        % \midi{ \tempo 8 = 68 }
    }
}