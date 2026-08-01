\version "2.25.13"

% ----------------------------------------

melodyPonte = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerPonte = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperPonte = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyPonte" \melodyPonte
    \new Voice = "innerPonte" \innerPonte
  >>
}

basslinePonte = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassPonte = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperPonte 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslinePonte 
    }
    \new FiguredBass {
      \figuredBassPonte 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
