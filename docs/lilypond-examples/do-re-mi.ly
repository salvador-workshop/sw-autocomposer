\version "2.25.13"

% ----------------------------------------

melodyDoReMi = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerDoReMi = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperDoReMi = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyDoReMi" \melodyDoReMi
    \new Voice = "innerDoReMi" \innerDoReMi
  >>
}

basslineDoReMi = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassDoReMi = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperDoReMi 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineDoReMi 
    }
    \new FiguredBass {
      \figuredBassDoReMi 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
