\version "2.25.13"

% ----------------------------------------

melodyJupiterAlt = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerJupiterAlt = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperJupiterAlt = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyJupiterAlt" \melodyJupiterAlt
    \new Voice = "innerJupiterAlt" \innerJupiterAlt
  >>
}

basslineJupiterAlt = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassJupiterAlt = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperJupiterAlt 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineJupiterAlt 
    }
    \new FiguredBass {
      \figuredBassJupiterAlt 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
