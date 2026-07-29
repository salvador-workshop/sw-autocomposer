\version "2.25.13"

melody = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

inner = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upper = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "first" \melody
    \new Voice = "second" \inner
  >>
}

bassline = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" \upper
    \new Staff = "bassline" \bassline
    \new FiguredBass {
    \figuremode {
      <5 3>4 <4 3> <6 5> <5 3>
    }
  }
  >>
  \layout { }
  \midi { }
}
