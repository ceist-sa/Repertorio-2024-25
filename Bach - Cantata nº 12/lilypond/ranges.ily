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


% ===================== FLUTE =====================

% musescore range:
#(define flute_amateur_low 0) % C4
#(define flute_amateur_high 33) % A6
#(define flute_pro_low -1) % B3
#(define flute_pro_high 38) % D7

#(define (flute-range grob)
   (let* ((pch (ly:event-property (event-cause grob) 'pitch))
          (semitones (ly:pitch-semitones pch)))
          (cond ((and 
                    (>= semitones flute_amateur_low)
                    (<= semitones flute_amateur_high) 
                    ) black)
                ((and 
                    (>= semitones flute_pro_low)
                    (<= semitones flute_pro_high) 
                    ) darkyellow)

                (else red)
          )))

% copy paste within staff
% \override NoteHead.color = #flute-range

% ===================== OBOE =====================

% musescore range:
#(define oboe_amateur_low -2) % A#3
#(define oboe_amateur_high 27) % D#6
#(define oboe_pro_low -2) % A#3
#(define oboe_pro_high 36) % C7

#(define (oboe-range grob)
   (let* ((pch (ly:event-property (event-cause grob) 'pitch))
          (semitones (ly:pitch-semitones pch)))
          (cond ((and 
                    (>= semitones oboe_amateur_low)
                    (<= semitones oboe_amateur_high) 
                    ) black)
                ((and 
                    (>= semitones oboe_pro_low)
                    (<= semitones oboe_pro_high) 
                    ) darkyellow)

                (else red)
          )))

% copy paste within staff
% \override NoteHead.color = #oboe-range