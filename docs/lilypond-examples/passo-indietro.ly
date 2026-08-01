\version "2.25.13"

% ----------------------------------------

melodyPassoIndietro = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f' e
}

innerPassoIndietro = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> <e g>
}

upperPassoIndietro = {
  \time 4/4

  <<
    \new Voice = "melodyPassoIndietro" \melodyPassoIndietro
    \new Voice = "innerPassoIndietro" \innerPassoIndietro
  >>
}

basslinePassoIndietro = \relative c {
  \time 4/4
  \override Stem.stencil = ##f

  c4 d b c
}

figuredBassPassoIndietro = \figuremode {
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

      \upperPassoIndietro
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslinePassoIndietro
    }
    \new FiguredBass {
      \figuredBassPassoIndietro
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
