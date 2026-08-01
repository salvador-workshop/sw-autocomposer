\version "2.25.13"

% ----------------------------------------

melodyModPrinner = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerModPrinner = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperModPrinner = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyModPrinner" \melodyModPrinner
    \new Voice = "innerModPrinner" \innerModPrinner
  >>
}

basslineModPrinner = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassModPrinner = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperModPrinner 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineModPrinner 
    }
    \new FiguredBass {
      \figuredBassModPrinner 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
