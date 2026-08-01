\version "2.25.13"

% ----------------------------------------

melodyJupiter = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerJupiter = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperJupiter = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyJupiter" \melodyJupiter
    \new Voice = "innerJupiter" \innerJupiter
  >>
}

basslineJupiter = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassJupiter = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperJupiter 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineJupiter 
    }
    \new FiguredBass {
      \figuredBassJupiter 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
