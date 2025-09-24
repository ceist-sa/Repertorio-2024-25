\version "2.18.2"
\include "1413-Faure-Elegie-Global.ily"                
#(set-global-staff-size 20)  
#(ly:set-option 'point-and-click #f)

cInstrument = "Cors en Fa 3 et 4"

\paper {
     first-page-number = 2
		 indent = 20\mm
}	%% fin paper

\book {
\header {
    title = \cTitre
    subsubtitle = \cSousTitre
    composer =	\cCompositeur
		copyright = \cCopyright
		poet = \markup \box { \pad-around #1 { \cInstrument }}
		instrumentHeader = 	\markup { \cInstrument }	
}	%% fin header

\score { 
	\new StaffGroup <<
		\new Staff \with {instrumentName = "Cor 3 en Fa"} 
			{ \reperes \silencesMulti
			<<	\keepWithTag #'SansTon {\include "1413-Faure-Elegie-Trame.ily"}
					\keepWithTag #'partie {\include "Mus/1413-11-C3.ily"}
			>>
		}
		\new Staff \with {instrumentName = "Cor 4 en Fa"} 
			{ \reperes \silencesMulti
			<<	\keepWithTag #'SansTon {\include "1413-Faure-Elegie-Trame.ily"}
					\keepWithTag #'partie {\include "Mus/1413-12-C4.ily"}
			>>
		}
	>>
}	%% fin score
}	%% fin book	
