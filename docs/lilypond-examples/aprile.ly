\version "2.25.13"

% ----------------------------------------

melodyAprile = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerAprile = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperAprile = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyAprile" \melodyAprile
    \new Voice = "innerAprile" \innerAprile
  >>
}

basslineAprile = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassAprile = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperAprile 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineAprile 
    }
    \new FiguredBass {
      \figuredBassAprile 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
