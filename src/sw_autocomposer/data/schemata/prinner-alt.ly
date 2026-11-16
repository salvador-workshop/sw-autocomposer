\version "2.25.13"

% ----------------------------------------

melodyPrinnerAlt = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f' e
}

innerPrinnerAlt = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> <e g>
}

upperPrinnerAlt = {
  \time 4/4

  <<
    \new Voice = "melodyPrinnerAlt" \melodyPrinnerAlt
    \new Voice = "innerPrinnerAlt" \innerPrinnerAlt
  >>
}

basslinePrinnerAlt = \relative c {
  \time 4/4
  \override Stem.stencil = ##f

  c4 d b c
}

figuredBassPrinnerAlt = \figuremode {
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

      \upperPrinnerAlt
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslinePrinnerAlt
    }
    \new FiguredBass {
      \figuredBassPrinnerAlt
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
