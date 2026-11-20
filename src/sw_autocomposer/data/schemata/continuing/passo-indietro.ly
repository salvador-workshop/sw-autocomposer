\version "2.25.13"

% ----------------------------------------

melodyPassoIndietro = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  f4 g
}

innerPassoIndietro = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <a' c>4 <g c>
}

upperPassoIndietro = {
  \time 2/4

  <<
    \new Voice = "melodyPassoIndietro" \melodyPassoIndietro
    \new Voice = "innerPassoIndietro" \innerPassoIndietro
  >>
}

basslinePassoIndietro = \relative c {
  \time 2/4
  \override Stem.stencil = ##f

  f4^"IV" e^"I"
}

figuredBassPassoIndietro = \figuremode {
  <5 3>4 <6 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperPassoIndietro
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslinePassoIndietro
%     }
%     \new FiguredBass {
%       \figuredBassPassoIndietro
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
