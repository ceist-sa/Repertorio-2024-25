\version "2.24.4"

\include "../globals.ily"
\include "../instrument_names.ily"

marks = {
    \tempo "Allegro vivace."
    \time 4/4 
    \repeat volta 2 {
    s1*7
    %A
    \mark \default
    s1*11
    }
    %repeat bar
    s1*11
    %B
    \mark \default
    s1*12
    %C
    \mark \default
    s1*12
    \override TextSpanner.bound-details.left.text = "poco rit."
    \override TextSpanner.to-barline = ##t
    \textSpannerUp
    s4\startTextSpan s4 s4 s4 |
    %D
    \mark \default
    \tempo "a tempo"
    s4\stopTextSpan s4 s4 s4 |
    s1*8
    %E
    \mark \default
    s1*5
    \override TextSpanner.bound-details.left.text = "rit. al Fine"
    \override TextSpanner.to-barline = ##t
    \textSpannerDown
    s4 \startTextSpan s2 s4|
    s1 |
    s2 s4 s4 |
    s4\stopTextSpan s4 s4 s4 |
    \bar "|."
}

rthm =
#(define-music-function
  (note)
  (ly:music?)
  (if (music-is-of-type? note 'note-event)
    (ly:music-set-property! note 'duration #{ 8 #}))
  (if (music-is-of-type? note 'event-chord)
    (for-each
      (lambda (note)
        (if (music-is-of-type? note 'note-event)
          (ly:music-set-property! note 'duration #{ 8 #})
        )
      )
      (ly:music-property note 'elements)
    )
  )
  #{
    $note 16 16
  #}
)