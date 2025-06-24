\version "2.24.4"

% stolen from here
% https://stackoverflow.com/questions/54062699/lilypond-change-color-of-notes-below-and-above-a-certain-pitch



% ===================== VIOLIN =====================

% musescore range:
#(define violin_amateur_low -5) % G3
#(define violin_amateur_high 28) % E6
#(define violin_pro_low -5) % G3
#(define violin_pro_high 43) % G7

#(define (violin-range grob)
   (let* ((pch (ly:event-property (event-cause grob) 'pitch))
          (semitones (ly:pitch-semitones pch)))
          (cond ((and 
                    (>= semitones violin_amateur_low)
                    (<= semitones violin_amateur_high) 
                    ) black)
                ((and 
                    (>= semitones violin_pro_low)
                    (<= semitones violin_pro_high) 
                    ) darkyellow)

                (else red)
          )))

% copy paste within staff
% \override NoteHead.color = #violin-range

% ===================== VIOLA =====================

% musescore range:
#(define viola_amateur_low -12) % C3
#(define viola_amateur_high 19) % G5
#(define viola_pro_low -12) % C3
#(define viola_pro_high 33) % A6

#(define (viola-range grob)
   (let* ((pch (ly:event-property (event-cause grob) 'pitch))
          (semitones (ly:pitch-semitones pch)))
          (cond ((and 
                    (>= semitones viola_amateur_low)
                    (<= semitones viola_amateur_high) 
                    ) black)
                ((and 
                    (>= semitones viola_pro_low)
                    (<= semitones viola_pro_high) 
                    ) darkyellow)

                (else red)
          )))

% copy paste within staff
% \override NoteHead.color = #viola-range

% ===================== CELLO =====================

% musescore range:
#(define cello_amateur_low -24) % C2
#(define cello_amateur_high 7) % G4
#(define cello_pro_low -24) % C2
#(define cello_pro_high 30) % F#6

#(define (cello-range grob)
   (let* ((pch (ly:event-property (event-cause grob) 'pitch))
          (semitones (ly:pitch-semitones pch)))
          (cond ((and 
                    (>= semitones cello_amateur_low)
                    (<= semitones cello_amateur_high) 
                    ) black)
                ((and 
                    (>= semitones cello_pro_low)
                    (<= semitones cello_pro_high) 
                    ) darkyellow)

                (else red)
          )))

% copy paste within staff
% \override NoteHead.color = #cello-range

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