\version "2.18.2"
\include "globals.ily"                
#(set-global-staff-size 20)  
#(ly:set-option 'point-and-click #f)

cInstrument = "Violon 1"

\paper {
    %% first-page-number = 2
}	%% fin paper

\book {
\header {
    title = \cTitre
    subsubtitle = \cSousTitre
    composer =	\cCompositeur
		% copyright = \cCopyright
		poet = \markup \box { \pad-around #1 { \cInstrument }}
		instrumentHeader = 	\markup { \cInstrument }	
}	%% fin header

\score {
		\new Staff << 
			\reperes \silencesMulti
		 	<<	\keepWithTag #'Ton \marks 
				\keepWithTag #'partie \include "Mus/1413-14-V1.ily"
			>>
		>>
}	%% fin score
}	%% fin book	
