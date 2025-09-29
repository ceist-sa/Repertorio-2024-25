\version "2.18.2"
\include "globals.ily"                
#(set-global-staff-size 20)  
#(ly:set-option 'point-and-click #f)

cInstrument = \markup {"Clarinettes en si" \flat}

\paper {
     first-page-number = 2
		 indent = 20\mm
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
	\new StaffGroup <<
		\new Staff \with {instrumentName = "Clarinette 1"} 
			{ \reperes \silencesMulti
			<<	\keepWithTag #'TonClarinette {\marks}
					\keepWithTag #'partie {\include "Mus/1413-05-Cl1.ily"}
			>>
		}
		\new Staff \with {instrumentName = "Clarinette 2"} 
			{ \reperes \silencesMulti
			<<	\keepWithTag #'TonClarinette {\marks}
					\keepWithTag #'partie {\include "Mus/1413-06-Cl2.ily"}
			>>
		}
	>>
}	%% fin score
}	%% fin book	
