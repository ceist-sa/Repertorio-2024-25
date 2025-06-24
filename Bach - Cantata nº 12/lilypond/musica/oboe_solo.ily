\version "2.24.4"
\language "portugues"
\include "../globals.ily"
\include "../../../ranges.ily"

oboeSolo = \relative {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \key_time_tempo
    \clef treble
    s1*16 % replace with actual notes
    \bar "|."
}