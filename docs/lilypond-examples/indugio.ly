\version "2.25.13"

% ----------------------------------------

melodyIndugio = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerIndugio = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperIndugio = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyIndugio" \melodyIndugio
    \new Voice = "innerIndugio" \innerIndugio
  >>
}

basslineIndugio = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassIndugio = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperIndugio 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineIndugio 
    }
    \new FiguredBass {
      \figuredBassIndugio 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
