\version "2.24.4"
\include "../../../styles/style_conductor.ily"
\include "globals.ily"

\include "music/1413-01-Fl1.ily"
\include "music/1413-02-Fl2.ily"
\include "music/1413-03-Hb1.ily"
\include "music/1413-04-Hb2.ily"
\include "music/1413-05-Cl1.ily"
\include "music/1413-06-Cl2.ily"
\include "music/1413-07-Bn1.ily"
\include "music/1413-13-VioloncelleSolo.ily"
\include "music/1413-14-V1.ily"
\include "music/1413-15-V2.ily"
\include "music/1413-16-A.ily"
\include "music/1413-17-Vc.ily"
\include "music/1413-18-Cb.ily"


#(set-global-staff-size 17)

\layout {
    \context {
        \Staff 
        \RemoveEmptyStaves
    }
}

breaks = {
	s1*9
	% A
	\break
	s1*8
	% B
	s1*5
	% C
	\break
	s1*3
	% D
	s1*4
	% E
	s1*4
	% F
	s1*5
	%G
	\break
	s1*5
	s2
	% H
	s1*9
}

\paper {
	page-count = #13
}

\book {
    \header {
        filename = "Fauré - Élégie - CONDUCTOR"
    }
    \pageBreak
    \score {
    	<<
            \new Staff \with { \RemoveAllEmptyStaves } \breaks 
            \new StaffGroup <<
                \new Staff \with {										% Flute I
					instrumentName = \first_flute_name_long
					shortInstrumentName = \first_flute_name_short
				} << \marks \keepWithTag #'score {\first_flute_notes} >>
				\new Staff \with {										% Flute II
					instrumentName = \second_flute_name_long
					shortInstrumentName = \second_flute_name_short
				} << \marks \keepWithTag #'score {\second_flute_notes} >>
                \new Staff \with {										% Oboe I
					instrumentName = \first_oboe_name_long
					shortInstrumentName = \first_oboe_name_short
				} << \marks \keepWithTag #'score {\first_oboe_notes} >>
                \new Staff \with {										% Oboe II
					instrumentName = \second_oboe_name_long
					shortInstrumentName = \second_oboe_name_short
				} << \marks \keepWithTag #'score {\second_oboe_notes} >>
                \new Staff \with {										% Clarinet I
					instrumentName = \first_clarinet_name_long
					shortInstrumentName = \first_clarinet_name_short
				} << \marks \keepWithTag #'score {\first_clarinet_notes} >>
                \new Staff \with {										% Clarinet II
					instrumentName = \second_clarinet_name_long
					shortInstrumentName = \second_clarinet_name_short
				} << \marks \keepWithTag #'score {\second_clarinet_notes} >>
                \new Staff \with {										% Bassoon
					instrumentName = \bassoon_name_long
					shortInstrumentName = \bassoon_name_short
				} << \marks \keepWithTag #'score {\bassoon_notes} >>
            >>
			
			\new Staff \with {										% Cello solo
					instrumentName = \cello_solo_name_long
					shortInstrumentName = \cello_solo_name_short
				} << \marks \keepWithTag #'score {\cello_solo_notes} >>

            \new StaffGroup <<
                \new GrandStaff <<
                    \new Staff \with {									% Violin I
						instrumentName = \first_violin_name_long
						shortInstrumentName = \first_violin_name_short
					} << \marks \keepWithTag #'score {\first_violin_notes} >>
                    \new Staff \with {									% Violin II
						instrumentName = \second_violin_name_long
						shortInstrumentName = \second_violin_name_short
					} << \marks \keepWithTag #'score {\second_violin_notes} >>
                >>
                \new Staff \with {										% Viola
					instrumentName = \viola_name_long
					shortInstrumentName = \viola_name_short
				} << \marks \keepWithTag #'score {\viola_notes} >>
                \new Staff \with {										% Cello
					instrumentName = \cello_name_long
					shortInstrumentName = \cello_name_short
				} << \marks \keepWithTag #'score {\cello_notes} >>
            >>
        >>
    }
}