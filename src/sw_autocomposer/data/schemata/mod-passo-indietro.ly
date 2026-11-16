\version "2.25.13"

% ----------------------------------------

melodyModPassoIndietro = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f' e
}

innerModPassoIndietro = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> <e g>
}

upperModPassoIndietro = {
  \time 4/4

  <<
    \new Voice = "melodyModPassoIndietro" \melodyModPassoIndietro
    \new Voice = "innerModPassoIndietro" \innerModPassoIndietro
  >>
}

basslineModPassoIndietro = \relative c {
  \time 4/4
  \override Stem.stencil = ##f

  c4 d b c
}

figuredBassModPassoIndietro = \figuremode {
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

      \upperModPassoIndietro
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineModPassoIndietro
    }
    \new FiguredBass {
      \figuredBassModPassoIndietro
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
