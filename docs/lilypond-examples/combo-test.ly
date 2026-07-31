\version "2.25.13"

melodyMeyer = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerMeyer = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperMeyer = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyMeyer" \melodyMeyer
    \new Voice = "innerMeyer" \innerMeyer
  >>
}

basslineMeyer = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassMeyer = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

melodyPrinner = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerPrinner = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperPrinner = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyPrinner" \melodyPrinner
    \new Voice = "innerPrinner" \innerPrinner
  >>
}

basslinePrinner = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassPrinner = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperMeyer 
      \upperPrinner
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
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
