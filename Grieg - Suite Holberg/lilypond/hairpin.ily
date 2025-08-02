%% from output-lib.scm, extended to get the possibility to return other
%% hairpin-length than default
#(define ((elbowed-hairpin coords x-length-corr mirrored?) grob)
  "Create hairpin based on a list of @var{coords} in @code{(cons x y)}
form.  @code{x} is the portion of the width consumed for a given line
and @code{y} is the portion of the height.  For example,
@code{'((0.3 . 0.7) (0.8 . 0.9) (1.0 . 1.0))} means that at the point
where the hairpin has consumed 30% of its width, it must
be at 70% of its height.  Once it is to 80% width, it
must be at 90% height.  It finishes at
100% width and 100% height.  @var{mirrored?} indicates if the hairpin
is mirrored over the Y-axis or if just the upper part is drawn.
Returns a function that accepts a hairpin grob as an argument
and draws the stencil based on its coordinates.
The length of that hairpin may be adjusted with @var{x-length-corr}
@lilypond[verbatim,quote]
#(define simple-hairpin
  (elbowed-hairpin '((1.0 . 1.0)) #t))

\\relative c' {
  \\override Hairpin.stencil = #simple-hairpin
  a\\p\\< a a a\\f
}
@end lilypond
"
  (define (pair-to-list pair)
    (list (car pair) (cdr pair)))
  (define (normalize-coords goods x y)
    (map
     (lambda (coord)
       (cons (* x (car coord)) (* y (cdr coord))))
     goods))
  (define (my-c-p-s points thick decresc?)
    (make-connected-path-stencil
     points
     thick
     (if decresc? -1.0 1.0)
     1.0
     #f
     #f))
  ;; outer let to trigger suicide
  (let ((sten (ly:hairpin::print grob)))
    (if (grob::is-live? grob)
        (let* ((decresc? (eq? (ly:grob-property grob 'grow-direction) LEFT))
               (thick (ly:grob-property grob 'thickness 0.1))
               (thick (* thick (layout-line-thickness grob)))
               (x-ext (ly:stencil-extent sten X))
               (xex (cons (car x-ext) (- (cdr x-ext) x-length-corr)))
               (lenx (interval-length xex))
               (yex (ly:stencil-extent sten Y))
               (leny (interval-length yex))
               (xtrans (+ (car xex) (if decresc? lenx 0)))
               (ytrans (car yex))
               (uplist (map pair-to-list
                            (normalize-coords coords lenx (/ leny 2))))
               (downlist (map pair-to-list
                              (normalize-coords coords lenx (/ leny -2)))))
          (ly:stencil-translate
           (ly:stencil-add
            (my-c-p-s uplist thick decresc?)
            (if mirrored? (my-c-p-s downlist thick decresc?) empty-stencil))
           (cons xtrans ytrans)))
        '())))

#(define (shortened-hairpin corr)
  (elbowed-hairpin '((1.0 . 1.0)) corr #t))
  
#(define-markup-command (vstrut layout props)
  ()
  #:category other
  "
@cindex creating vertical space in text

Create a box of the same height as the current font, using the \"fp\" as
a reference.
"
  (let ((ref-mrkp (interpret-markup layout props "fp")))
    (ly:make-stencil (ly:stencil-expr empty-stencil)
                     empty-interval
                     (ly:stencil-extent ref-mrkp Y))))
  
#(define (hairpin-with-right-text text grob)
  "Rebuild a hairpin and add @var{text} to the right.
  The hairpin is shortened by the length of @var{text}, 
  @code{bound-padding} is taken into account"
      (let* ((text-stil (grob-interpret-markup grob (markup #:vstrut text)))
             (text-stil-x-extent (ly:stencil-extent text-stil X))
             (text-stil-length (interval-length text-stil-x-extent))
             (staff-space 
               (ly:output-def-lookup (ly:grob-layout grob) 'staff-space))
             (x-corr (+ text-stil-length (/ staff-space 2))))
             
      (ly:grob-set-property! grob 'stencil (shortened-hairpin x-corr))
      
        (let* ((stencil (ly:grob-property grob 'stencil))
               (stil-x-ext 
                 (ordered-cons 
                   (car (ly:stencil-extent stencil X))
                   (cdr (ly:stencil-extent stencil X))))
               (new-stencil 
                 (ly:stencil-add
                   (ly:stencil-aligned-to stencil Y CENTER)
                   (ly:stencil-translate-axis
                     (ly:stencil-aligned-to text-stil Y CENTER)
                     (+ (cdr stil-x-ext) staff-space)
                     X))))
        
        (ly:grob-set-property! grob 'stencil new-stencil))))
        
#(define (hairpin-with-right-text-callback txt)
"
 Returns a stencil build by @code{hairpin-with-right-text} for unbroken or the 
 last of broken hairpins.
"
  (lambda (grob)
    (let* ((orig (ly:grob-original grob))
           (siblings (ly:spanner-broken-into orig)))
       (if (or (null? siblings) 
               (equal? grob (car (last-pair siblings))))
           (hairpin-with-right-text txt grob)))))
           
           
hairpinWithRightText =
#(define-music-function (text) (markup?)
"
 Returns a hairpin with text at the right.
"
#{
  \once \override Voice.Hairpin.after-line-breaking =
    #(hairpin-with-right-text-callback text)
#})