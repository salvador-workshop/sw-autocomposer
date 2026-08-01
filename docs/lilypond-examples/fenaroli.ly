\version "2.25.13"

% ----------------------------------------

melodyFenaroli = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerFenaroli = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperFenaroli = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyFenaroli" \melodyFenaroli
    \new Voice = "innerFenaroli" \innerFenaroli
  >>
}

basslineFenaroli = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassFenaroli = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperFenaroli 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineFenaroli 
    }
    \new FiguredBass {
      \figuredBassFenaroli 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
