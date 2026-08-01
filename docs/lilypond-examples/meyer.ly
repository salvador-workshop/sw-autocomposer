\version "2.25.13"

% ----------------------------------------

melodyMeyer = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerMeyer = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperMeyer = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyMeyer" \melodyMeyer
    \new Voice = "innerMeyer" \innerMeyer
  >>
}

basslineMeyer = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassMeyer = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperMeyer 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineMeyer 
    }
    \new FiguredBass {
      \figuredBassMeyer 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
