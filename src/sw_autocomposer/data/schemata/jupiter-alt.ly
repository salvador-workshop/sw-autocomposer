\version "2.25.13"

% ----------------------------------------

melodyJupiterAlt = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f' e
}

innerJupiterAlt = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> <e g>
}

upperJupiterAlt = {
  \time 4/4

  <<
    \new Voice = "melodyJupiterAlt" \melodyJupiterAlt
    \new Voice = "innerJupiterAlt" \innerJupiterAlt
  >>
}

basslineJupiterAlt = \relative c {
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
      \clef treble
      \key c \major

      \upperJupiterAlt
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

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
