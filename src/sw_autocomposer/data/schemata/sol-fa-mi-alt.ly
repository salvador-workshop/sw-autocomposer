\version "2.25.13"

% ----------------------------------------

melodySolFaMiAlt = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f' e
}

innerSolFaMiAlt = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> <e g>
}

upperSolFaMiAlt = {
  \time 4/4

  <<
    \new Voice = "melodySolFaMiAlt" \melodySolFaMiAlt
    \new Voice = "innerSolFaMiAlt" \innerSolFaMiAlt
  >>
}

basslineSolFaMiAlt = \relative c {
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
      \clef treble
      \key c \major

      \upperSolFaMiAlt
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

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
