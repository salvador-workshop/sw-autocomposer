\version "2.25.13"

% ----------------------------------------

melodyFenaroli = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  f4 e b c
}

innerFenaroli = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <f g>4 <e g> <f b> g
}

upperFenaroli = {
  \time 4/4

  <<
    \new Voice = "melodyFenaroli" \melodyFenaroli
    \new Voice = "innerFenaroli" \innerFenaroli
  >>
}

basslineFenaroli = \relative c {
  \time 4/4
  \override Stem.stencil = ##f

  b4^"V" c^"I" d^"VII" e^"I"
}

figuredBassFenaroli = \figuremode {
  <6 5>4 <5 3> <6 3> <6 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperFenaroli
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslineFenaroli
%     }
%     \new FiguredBass {
%       \figuredBassFenaroli
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
