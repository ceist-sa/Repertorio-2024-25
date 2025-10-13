\version "2.18.2"

\include "instrument_names.ily"

\header {
    title = "Élégie"
	subtitle = "pour violoncelle et orchestre"
    composer = "Gabriel Fauré (1845 – 1924)"
	opus = "Op. 24"
}

marks = {
	\tempo "Molto adagio"
	\time 4/4

	s1*9
	\mark #1 s1*8
	\mark #2 s1*5
	\mark #3 s1*3
	\mark #4 s1*3
	\tempo \markup {"poco rit."} s1
	\mark #5 \tempo \markup {"a tempo"} s1
	s1*3
	\mark #6 s1
	\tempo \markup {"poco più animato"} s1
	s1*2
	s2. \tempo \markup {"poco rit."} s4
	\mark #7 \tempo \markup {"a tempo"} s1
	s1*4
	\time 2/4 s2
	\mark #8 \time 4/4
	s1*9
	\bar "|."
}

%%%%	fonctions diverses -------------------------------------------------------------------------------
arco = ^\markup {"arco"}
pizz = ^\markup {"pizz."}
sourdOn = ^\markup {\bold \fontsize #-2 "con sordino"}
divis = ^\markup {\fontsize #-1 "div."}
simile = _\markup {\italic \fontsize #-1 "simile"}
dolce = _\markup {\italic \fontsize #-1 "dolce"}
dolcissimo = _\markup {\italic \fontsize #-1 "dolcissimo"}
dolcespr = _\markup {\italic \fontsize #-1 "dolce espressivo"}
sec = ^\markup {\italic \fontsize #-1 "sec"}
sempreff = _\markup {\dynamic ff \italic "sempre "}
semprep = _\markup {\italic "sempre " \dynamic p}
semprepp = _\markup {\italic "sempre " \dynamic pp}

reperes = {	\set Score.markFormatter = #format-mark-box-alphabet
						\override Score.RehearsalMark.padding = #2.0 }
silencesMulti = { \compressEmptyMeasures 
									\override MultiMeasureRest.expand-limit = #1 
									\set restNumberThreshold = #0 }

%%% staccato ..........................................
#(define (make-script x)
	(make-music 'ArticulationEvent
			'articulation-type x))

#(define (add-script m x)
	(case (ly:music-property m 'name)
	((NoteEvent) (set! (ly:music-property m 'articulations)
					(append (ly:music-property m 'articulations)
						(list (make-script x))))
				m)
	((EventChord)(set! (ly:music-property m 'elements)
					(append (ly:music-property m 'elements)
						(list (make-script x))))
				m)
	(else #f)))

#(define (add-staccato m)
		(add-script m 'staccato))

addStacc = #(define-music-function (parser location music)
				(ly:music?)
		(map-some-music add-staccato music)) 
%%% fin staccato ............................................

%%% tenuto ..........................................

#(define (make-script x)
		(make-music 'ArticulationEvent
								'articulation-type x))

#(define (add-script m x)
(case (ly:music-property m 'name)
	((NoteEvent) (set! (ly:music-property m 'articulations)
					(append (ly:music-property m 'articulations)
						(list (make-script x))))
				m)
	((EventChord)(set! (ly:music-property m 'elements)
					(append (ly:music-property m 'elements)
						(list (make-script x))))
				m)
	(else #f)))

#(define (add-tenuto m)
			(add-script m 'tenuto))

addTenuto =
		#(define-music-function (parser location music) 
							(ly:music?)
				(map-some-music add-tenuto music))	   
%%% fin tenuto ............................................