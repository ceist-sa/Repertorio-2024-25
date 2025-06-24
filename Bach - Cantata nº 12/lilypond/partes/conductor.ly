\version "2.24.4"
\include "../../../styles.ily"
\include "../globals.ily"
\include "../musica/oboe_solo.ily"
\include "../musica/violin1.ily"
\include "../musica/violin2.ily"
\include "../musica/viola1.ily"
\include "../musica/viola2.ily"
\include "../musica/clarinets.ily"
\include "../musica/cello.ily"
\include "../musica/woodwinds.ily"

\book {
    \paperStyle
    \paper {
        indent = 2\cm
        short-indent = 1\cm
    }
    \pieceHeaders
    \header {
        filename = "Bach - Cantata nº 12 - GERAL"
    }
    \score {
        \scoreHeaders
        <<
            \new Staff \with {
                instrumentName = "Oboé solo"
                shortInstrumentName = "Ob."
            } {
                \oboeSolo
            }

            \new StaffGroup <<
                \new GrandStaff <<
                    \new Staff \with {
                        instrumentName = "Violino I"
                        shortInstrumentName = "Vln. I"
                    } {
                        \violinI
                    }
                    \new Staff \with {
                        instrumentName = "Violino II"
                        shortInstrumentName = "Vln. II"
                    } {
                        \violinII
                    }
                >>
                \new GrandStaff <<
                    \new Staff \with {
                        instrumentName = "Viola I"
                        shortInstrumentName = "Vla. I"
                    } {
                        \violaI
                    }
                    \new Staff \with {
                        instrumentName = "Viola II"
                        shortInstrumentName = "Vla. II"
                    } {
                        \violaII
                    }
                >>
                \new Staff \with {
                    instrumentName = "Violoncelo"
                    shortInstrumentName = "Vcl."
                } {
                    \key_time_tempo
                    \override NoteHead.color = #cello-range
                    \cello
                }
            >>

            \new GrandStaff <<
                \new Staff \with {
                    instrumentName = "Clarinete I"
                    shortInstrumentName = "Cl. I"
                } {
                    \transposition sib
                    \transpose do re {
                        \clarinetI
                    }
                }
                \new Staff \with {
                    instrumentName = "Clarinete II"
                    shortInstrumentName = "Cl. II"
                } {
                    \transposition sib
                    \transpose do re {
                        \clarinetII
                    }
                }
            >>
            \new StaffGroup <<
                \new Staff \with {
                    instrumentName = "Flauta I"
                    shortInstrumentName = "Fl. I"
                } {
                    \fluteI
                }
                \new Staff \with {
                    instrumentName = "Flauta II"
                    shortInstrumentName = "Fl. II"
                } {
                    \fluteII
                }
                \new Staff \with {
                    instrumentName = "Flauta III"
                    shortInstrumentName = "Fl. III"
                } {
                    \fluteIII
                }
                \new Staff \with {
                    instrumentName = "Oboé"
                    shortInstrumentName = "Ob."
                } {    
                    \oboe
                }
                \new Staff \with {
                    instrumentName = "Clarinete III"
                    shortInstrumentName = "Cl. III"
                } {
                    \transposition sib
                    \transpose do re {
                        \clarinetIII
                    }
                }
            >>
        >>
        % \midi{ \tempo 8 = 68 }
    }
}