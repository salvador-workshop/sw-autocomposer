\version "2.25.13"

% ----------------------------------------

melodyModPassoIndietro = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerModPassoIndietro = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperModPassoIndietro = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyModPassoIndietro" \melodyModPassoIndietro
    \new Voice = "innerModPassoIndietro" \innerModPassoIndietro
  >>
}

basslineModPassoIndietro = \relative c {
  \clef bass
  \key c \major
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
      \upperModPassoIndietro 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
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
