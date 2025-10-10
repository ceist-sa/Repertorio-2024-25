\version "2.18.2"
\include "globals.ily"                
#(set-global-staff-size 20)  
#(ly:set-option 'point-and-click #f)

cInstrument = "Cors en Fa 1 et 2"

\paper {
    % first-page-number = 2
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
		\new Staff \with {instrumentName = "Cor 1 en Fa"} 
			{ \reperes \silencesMulti
			<<	\keepWithTag #'SansTon {\marks}
					\keepWithTag #'partie {\include "Mus/1413-09-C1.ily"}
			>>
		}
		\new Staff \with {instrumentName = "Cor 2 en Fa"} 
			{ \reperes \silencesMulti
			<<	\keepWithTag #'SansTon {\marks}
					\keepWithTag #'partie {\include "Mus/1413-10-C2.ily"}
			>>
		}
	>>
}	%% fin score
}	%% fin book	
