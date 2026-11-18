\version "2.25.13"

% ----------------------------------------

melodyDoReMi = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f'
}

innerDoReMi = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g>
}

upperDoReMi = {
  \time 3/4

  <<
    \new Voice = "melodyDoReMi" \melodyDoReMi
    \new Voice = "innerDoReMi" \innerDoReMi
  >>
}

basslineDoReMi = \relative c {
  \time 3/4
  \override Stem.stencil = ##f

  c4^"I" d^"V" b^"I"
}

figuredBassDoReMi = \figuremode {
  <5 3>4 <4 3> <6 5>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperDoReMi
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslineDoReMi
%     }
%     \new FiguredBass {
%       \figuredBassDoReMi
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
