\version "2.25.13"

% ----------------------------------------

melodyRomanesca = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f' e
}

innerRomanesca = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> <e g>
}

upperRomanesca = {
  \time 4/4

  <<
    \new Voice = "melodyRomanesca" \melodyRomanesca
    \new Voice = "innerRomanesca" \innerRomanesca
  >>
}

basslineRomanesca = \relative c {
  \time 4/4
  \override Stem.stencil = ##f

  c4 d b c
}

figuredBassRomanesca = \figuremode {
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

      \upperRomanesca
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineRomanesca
    }
    \new FiguredBass {
      \figuredBassRomanesca
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
