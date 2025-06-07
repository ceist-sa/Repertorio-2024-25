\version "2.24.4"

% stolen from here
% https://stackoverflow.com/questions/54062699/lilypond-change-color-of-notes-below-and-above-a-certain-pitch


% ===================== CLARINET =====================

% musescore range:
#(define clarinet_amateur_low -10) % D3
#(define clarinet_amateur_high 29) % F6
#(define clarinet_pro_low -10) % D3
#(define clarinet_pro_high 34) % A#6

#(define (clarinet-range grob)
   (let* ((pch (ly:event-property (event-cause grob) 'pitch))
          (semitones (ly:pitch-semitones pch)))
          (cond ((and 
                    (>= semitones clarinet_amateur_low)
                    (<= semitones clarinet_amateur_high) 
                    ) black)
                ((and 
                    (>= semitones clarinet_pro_low)
                    (<= semitones clarinet_pro_high) 
                    ) darkyellow)

                (else red)
          )))

% copy paste within staff
% \override NoteHead.color = #clarinet-range