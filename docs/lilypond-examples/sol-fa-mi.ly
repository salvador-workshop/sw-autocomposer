\version "2.25.13"

% ----------------------------------------

melodySolFaMi = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerSolFaMi = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperSolFaMi = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodySolFaMi" \melodySolFaMi
    \new Voice = "innerSolFaMi" \innerSolFaMi
  >>
}

basslineSolFaMi = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassSolFaMi = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperSolFaMi 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineSolFaMi 
    }
    \new FiguredBass {
      \figuredBassSolFaMi 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
