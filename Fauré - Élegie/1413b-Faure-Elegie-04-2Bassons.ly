\version "2.18.2"
\include "1413-Faure-Elegie-Global.ily"                
#(set-global-staff-size 20)  
#(ly:set-option 'point-and-click #f)

cInstrument = "Bassons"

\paper {
     first-page-number = 2
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
		\new Staff \with {instrumentName = "Basson 1"} 
			{ \reperes \silencesMulti
			<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
					\keepWithTag #'partie {\include "Mus/1413-07-Bn1.ily"}
			>>
		}
		\new Staff \with {instrumentName = "Basson 2"} 
			{ \reperes \silencesMulti
			<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
					\keepWithTag #'partie {\include "Mus/1413-08-Bn2.ily"}
			>>
		}
	>>
}	%% fin score
}	%% fin book	
