\version "2.24.4"

\paper {
  scoreTitleMarkup = \markup \fontsize #5 { \vspace #2 \fill-line { \null \fromproperty #'header:piece \null } } % Center and resize movement titles

  % this only applies to the parts
  bookTitleMarkup =
  \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \fontsize #7 \bold \fromproperty #'header:title
      }

      \fill-line {
        \epsfile #Y #9 #"short_logo.eps"
        {\raise #2.5 \fontsize #3 \bold \fromproperty #'header:instrument }
        \raise #4.5 \column {\fromproperty #'header:composer \fromproperty #'header:opus }
      }

    }
  }

  oddHeaderMarkup = ##f
  evenHeaderMarkup = ##f 
  oddFooterMarkup = \markup{ \fill-line {\null \fromproperty #'page:page-number-string \null}}
  evenFooterMarkup = \oddFooterMarkup

  indent = 0\cm
  short-indent = 0\cm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}