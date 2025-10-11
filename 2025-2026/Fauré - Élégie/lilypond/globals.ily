\version "2.18.2"

\include "instrument_names.ily"

\header {
    title = "Élégie, Op. 24"
    composer = "Gabriel Fauré"
    tagline = "CEIST"
}

marks = {
	\tempo "Molto adagio" 8 = 69
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
	s2. \tempo \markup {\column {"poco" "rit."}} s4
	\mark #7 \tempo \markup {"a tempo"} s1
	s1*4
	\time 2/4 s2
	\mark #8 \time 4/4
	s1*9
	\bar "|."
}

cCompositeur = \markup { "Gabriel FAURÉ"}
cCompositeurDates = \markup {\center-column {\cCompositeur "(1845-1924)"}}
cTitre = \markup {"ÉLÉGIE, op.24"}
cSousTitre = "pour violoncelle et orchestre"
cRefConcert = "1413"
%{ cCopyright = \markup {\fontsize #-4 \concat {
				\epsfile #X #2  #"cc.eps"  " 2012-" \italic {"Le Concert - "} \cRefConcert " / " \cCompositeur " - " \cTitre " - v.1" }} %}



%%%%	fonctions diverses -------------------------------------------------------------------------------
arco = ^\markup {"Arco"}
pizz = ^\markup {"Pizz."}
sourdOn = _\markup {\italic \fontsize #-2 \column {"mettez la" "sourdine"}}
divis = ^\markup {\fontsize #-1 "Div."}
simile = _\markup {\italic \fontsize #-1 "simile"}
dolce = _\markup {\italic \fontsize #-1 "dolce"}
dolcissimo = _\markup {\italic \fontsize #-1 "dolcissimo"}
dolcespr = _\markup {\italic \fontsize #-1 "dolce espressivo"}
sec = ^\markup {\italic \fontsize #-1 "sec"}
sempreff = _\markup {\dynamic ff \italic "sempre "}
semprep = _\markup {\italic "sempre " \dynamic p}
semprepp = _\markup {\italic "sempre " \dynamic pp}

reperes = {	\set Score.markFormatter = #format-mark-box-alphabet
						\override Score.RehearsalMark #'padding = #2.0 }
silencesMulti = { \compressEmptyMeasures 
									\override MultiMeasureRest #'expand-limit = #1 
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
		(add-script m 'staccato'))

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
			(add-script m "tenuto"))

addTenuto =
		#(define-music-function (parser location music) 
							(ly:music?)
				(map-some-music add-tenuto music))	   
%%% fin tenuto ............................................


%%%% section \paper  --------------------------------------------------------------
%{
\paper {
    top-margin = 5\mm
    bottom-margin = 1\mm
    head-separation = 5\mm
		foot-separation = 1\mm
		markup-system-spacing = #'((basic-distance . 5)(padding . 3) (minimum-distance . 5) (stretchability . 10) )
		top-system-spacing = #'((basic-distance . 5) (padding . 5) (minimum-distance . 5) (stretchability . 10) )
		system-system-spacing = #'((basic-distance . 7) (padding . 3) (minimum-distance . 5) (stretchability . 10) )
		score-system-spacing = #'((basic-distance . 12) (padding . 5) (minimum-distance . 5) (stretchability . 10) )
		last-bottom-spacing = #'((basic-distance . 5) (padding . 5) (minimum-distance . 5) (stretchability . 10) )
    ragged-last-bottom = ##f
		oddHeaderMarkup = \markup \fill-line { 
				" "
				\on-the-fly #not-first-page \fromproperty #'header:instrumentHeader
				\on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
		evenHeaderMarkup = \markup \fill-line {
				\on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
				\on-the-fly #not-first-page \fromproperty #'header:instrumentHeader
				" " }
		oddFooterMarkup = \markup { \fill-line {
				\on-the-fly #first-page \fontsize #-5 
					\left-column { \null \concat { \epsfile #X #8  #"cc2.eps" "http://creativecommons.org" }
										"Licence Creative Commons" "Non-Commercial Share Alike" } 
				\center-column { \general-align #X #CENTER " " \cCopyright " "}
				\on-the-fly #first-page \fontsize #-5 
					\right-column {	\null \concat {"Gravé avec LilyPond " \epsfile #X #3 #"lily.eps" }
					"http://www.lilypond.org " }					
				}}
}	%% fin paper
%}