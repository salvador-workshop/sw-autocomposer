\version "2.25.13"

% ----------------------------------------

melodyRomanesca = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerRomanesca = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperRomanesca = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyRomanesca" \melodyRomanesca
    \new Voice = "innerRomanesca" \innerRomanesca
  >>
}

basslineRomanesca = \relative c {
  \clef bass
  \key c \major
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
      \upperRomanesca 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
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
