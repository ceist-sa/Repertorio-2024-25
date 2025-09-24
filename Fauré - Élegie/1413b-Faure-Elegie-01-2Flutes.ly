\version "2.18.2"
\include "1413-Faure-Elegie-Global.ily"                
#(set-global-staff-size 20)  
#(ly:set-option 'point-and-click #f)

cInstrument = "Flûtes"

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
		\new Staff \with {instrumentName = "Flûte 1"} 
			{ \reperes \silencesMulti
			<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
					\keepWithTag #'partie {\include "Mus/1413-01-Fl1.ily"}
			>>
		}
		\new Staff \with {instrumentName = "Flûte 2"} 
			{ \reperes \silencesMulti
			<<	\keepWithTag #'Ton {\include "1413-Faure-Elegie-Trame.ily"}
					\keepWithTag #'partie {\include "Mus/1413-02-Fl2.ily"}
			>>
		}
	>>
}	%% fin score
}	%% fin book	
