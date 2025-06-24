\version "2.24.4"
\language "portugues"
\include "../globals.ily"
\include "../../../ranges.ily"

violaI = \relative {
    \set Staff.midiInstrument = #"viola"
    \override NoteHead.color = #viola-range
    \key_time_tempo
    \clef alto
    s1*16 % replace with actual notes
    \bar "|."
}