\version "2.25.13"

% ----------------------------------------

melodySolFaMiAlt = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerSolFaMiAlt = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperSolFaMiAlt = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodySolFaMiAlt" \melodySolFaMiAlt
    \new Voice = "innerSolFaMiAlt" \innerSolFaMiAlt
  >>
}

basslineSolFaMiAlt = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassSolFaMiAlt = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperSolFaMiAlt 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineSolFaMiAlt 
    }
    \new FiguredBass {
      \figuredBassSolFaMiAlt 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
