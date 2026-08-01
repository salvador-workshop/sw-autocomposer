\version "2.25.13"

% ----------------------------------------

melodyPastorella = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerPastorella = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperPastorella = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyPastorella" \melodyPastorella
    \new Voice = "innerPastorella" \innerPastorella
  >>
}

basslinePastorella = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassPastorella = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperPastorella 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslinePastorella 
    }
    \new FiguredBass {
      \figuredBassPastorella 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
