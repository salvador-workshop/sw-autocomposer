\version "2.25.13"

% ----------------------------------------

melodyQuiescenza = \relative c'' {
  \override Stem.stencil = ##f
  \voiceOne
  c4 b f' e
}

innerQuiescenza = \relative c' {
  \override Stem.stencil = ##f
  \voiceTwo
  <e g>4 <f g> <f g> <e g>
}

upperQuiescenza = {
  \clef treble
  \key c \major
  \time 4/4

  <<
    \new Voice = "melodyQuiescenza" \melodyQuiescenza
    \new Voice = "innerQuiescenza" \innerQuiescenza
  >>
}

basslineQuiescenza = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \override Stem.stencil = ##f
  c4 d b c
}

figuredBassQuiescenza = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
}

% ----------------------------------------

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \upperQuiescenza 
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \basslineQuiescenza 
    }
    \new FiguredBass {
      \figuredBassQuiescenza 
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
