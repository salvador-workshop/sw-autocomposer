\version "2.25.13"

\include "../data/schemata/meyer.ly"
\include "../data/schemata/prinner.ly"

% ----------------------------------------

\score {
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperMeyer
      \upperPrinner
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineMeyer
      \basslinePrinner
    }
    \new FiguredBass {
      \figuredBassMeyer
      \figuredBassPrinner
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
