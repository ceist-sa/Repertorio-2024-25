\version "2.18.2"
\include "globals.ily"                

\include "Mus/1413-01-Fl1.ily"
\include "Mus/1413-02-Fl2.ily"

#(set-global-staff-size 20)  
#(ly:set-option 'point-and-click #f)

cInstrument = "Flutes"

\paper { 
     first-page-number = 2
}	%% fin paper

\book {
	\header {
		title = \cTitre
		subsubtitle = \cSousTitre
		composer =	\cCompositeur
		% copyright = \cCopyright
		poet = \markup \box { \pad-around #1 { \cInstrument }}
		instrumentHeader = 	\markup { \cInstrument }	
	}

	\score { 
		\new StaffGroup <<
			\new Staff \with {instrumentName = "Flute I"} 
				{ \reperes \silencesMulti
				<<	\keepWithTag #'Ton {\marks}
						\keepWithTag #'partie { \fluteI}
				>>
			}
			\new Staff \with {instrumentName = "Flute II"} 
				{ \reperes \silencesMulti
				<<	\keepWithTag #'Ton {\marks}
						\keepWithTag #'partie { \fluteII}
				>>
			}
		>>
	}
}
