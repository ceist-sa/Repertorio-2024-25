\version "2.18.2"				%%% Fauré: Elégie. Score 
\include "1413-Faure-Elegie-Global.ily"   
                  
#(set-global-staff-size 16)  
#(ly:set-option 'point-and-click #f)

\paper { 
		indent = #40
		left-margin = 25\mm
		max-systems-per-page = #1
		top-system-spacing = #'((space . 5) (padding . 10) (minimum-distance . 5) (stretchability . 5))
		bottom-system-spacing = #'((space . 5) (padding . 10) (minimum-distance . 5) (stretchability . 5))
		top-system-spacing = #'((basic-distance . 5) (padding . 5))
		last-bottom-spacing = #'((basic-distance . 5) (padding . 4))
		ragged-bottom = ##f
		ragged-last-bottom = ##f
}	%%% fin paper

\layout {
  \context {
    \Score
    \remove "Mark_engraver" 
    \remove "Metronome_mark_engraver"
    \remove "Staff_collecting_engraver"
  }
} 

\book {
\header {
    title = \markup {\fontsize #+4.0 {\cTitre}}
		subTitle = \cSousTitre
    composer =	\cCompositeurDates
		copyright = \cCopyright
}	%%% fin header

\score {
 <<	%% tout
		\override Score.BarNumber.padding = #5 
		\override Score.BarNumber.font-size = #2 
		\set Score.soloText = #"1°"
		\set Score.soloIIText = #"2°"
		\reperes

	\new StaffGroup <<		%% bois
			\new Staff \with {
						\consists "Mark_engraver"
						\consists "Metronome_mark_engraver"
						\consists "Staff_collecting_engraver" 
				instrumentName = "Flûtes 1-2"
				shortInstrumentName = "Fl." }
			<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
					\partcombine 
						\relative c'' {\keepWithTag #'score \include "Mus/1413-01-Fl1.ily"}
						\relative c'' {\keepWithTag #'score \include "Mus/1413-02-Fl2.ily"}
			>> 
      \new Staff \with {
				instrumentName = "Hautbois 1-2"
				shortInstrumentName = "Hb." }
			<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
					\partcombine 
						\relative c'' {\keepWithTag #'score \include "Mus/1413-03-Hb1.ily"}
						\relative c'' {\keepWithTag #'score \include "Mus/1413-04-Hb2.ily"}
			>>
      \new Staff \with {
				instrumentName = \markup {\center-column {"Clarinettes" \concat {"1-2 en Si" \flat}}}
				shortInstrumentName = "Cl." }
			<<	\keepWithTag #'TonClarinette {\include "1413-Faure-Elegie-Trame.ily"}
					\partcombine 
						\relative c'' {\keepWithTag #'score \include "Mus/1413-05-Cl1.ily"}
						\relative c'' {\keepWithTag #'score \include "Mus/1413-06-Cl2.ily"}
			>>     
      \new Staff \with {
				instrumentName = "Basson 1-2"
				shortInstrumentName = "Bn." }
			<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
					\partcombine 
            \relative c {\keepWithTag #'score \include "Mus/1413-07-Bn1.ily"}
            \relative c {\keepWithTag #'score \include "Mus/1413-08-Bn2.ily"}
			>>
	>>	%% Bois
	
	\new StaffGroup <<		%% cuivres
		\new GrandStaff <<	%% cors
			\new Staff \with {
				instrumentName = \markup {\center-column {"Cors 1-2" "en FA"}}
				shortInstrumentName = "C.1-2" }
			<<	\keepWithTag #'SansTon {\include "1413-Faure-Elegie-Trame.ily"}
					\partcombine 
						\relative c'' {\keepWithTag #'score \include "Mus/1413-09-C1.ily"}
						\relative c'' {\keepWithTag #'score \include "Mus/1413-10-C2.ily"}
			>>
			\new Staff \with {
				instrumentName = \markup {\center-column {"Cors 3-4" "en FA"}}
				shortInstrumentName = "C.3-4" }
			<<	\keepWithTag #'SansTon {\include "1413-Faure-Elegie-Trame.ily"}
					\partcombine 
						\relative c'' {\keepWithTag #'score \include "Mus/1413-11-C3.ily"}
						\relative c'' {\keepWithTag #'score \include "Mus/1413-12-C4.ily"}
			>>
		>>	%% cors
	>>	%% cuivres
	
	\new StaffGroup <<	 	%% solo
		\override StaffGroup.SystemStartBracket #'collapse-height = #1
		\override Score.SystemStartBar #'collapse-height = #1
			\new Staff \with {
				instrumentName = "Violoncelle Solo"
         shortInstrumentName = "Solo" }
			<<	\keepWithTag #'Ton { \include "1413-Faure-Elegie-Trame.ily" }
					\keepWithTag #'score { \include "Mus/1413-13-VioloncelleSolo.ily" }
			>> 
	>> 	%% solo

	\new StaffGroup <<		%% cordes
		\new GrandStaff << %% violons
        \new Staff \with { 
						\consists "Mark_engraver"
						\consists "Metronome_mark_engraver"
						\consists "Staff_collecting_engraver" 
					instrumentName = "Violon I"
					shortInstrumentName = "v1" }
				<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
						\keepWithTag #'score {\include "Mus/1413-14-V1.ily"}
				>>
        \new Staff \with {
					instrumentName = "Violon II"
					shortInstrumentName = "v2" }
				<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
						\keepWithTag #'score {\include "Mus/1413-15-V2.ily"}
				>>
		>>	%% violons
      \new Staff \with {
				instrumentName = "Alto"
				shortInstrumentName = "A." }
			<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
					\keepWithTag #'score {\include "Mus/1413-16-A.ily"}
			>>
		\new GrandStaff << %% basses
      \new Staff \with {
				instrumentName = "Violoncelle"
				shortInstrumentName = "Vc" }
			<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
					\keepWithTag #'score {\include "Mus/1413-17-Vc.ily"}
			>>
      \new Staff \with {
				instrumentName = "Contrebasse"
				shortInstrumentName = "Cb" }
			<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
					\keepWithTag #'score {\include "Mus/1413-18-Cb.ily"}
			>>
		>>	%% basses
	>> 	%% cordes
>>	%% tout
}  %% score
}  %% book
