\version "2.24.4"
\language "portugues"
\include "../globals.ily"
\include "../../../ranges.ily"

violinI = \relative {
    \set Staff.midiInstrument = #"violin"
    \override NoteHead.color = #violin-range
    \key_time_tempo
    \clef treble
    s1*16 % replace with actual notes
    \bar "|."
}