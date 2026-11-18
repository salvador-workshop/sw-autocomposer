\version "2.25.13"

% ----------------------------------------

melodyIndugio = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4^"Brief passage can be inserted between first two stages." b f' e e
}

innerIndugio = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> <e g> <e g>
}

upperIndugio = {
  \time 5/4

  <<
    \new Voice = "melodyIndugio" \melodyIndugio
    \new Voice = "innerIndugio" \innerIndugio
  >>
}

basslineIndugio = \relative c {
  \time 5/4
  \override Stem.stencil = ##f

  c4^"II" d^"II" b^"II" c^"V/V" c^"V"
}

figuredBassIndugio = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3> <5 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperIndugio
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslineIndugio
%     }
%     \new FiguredBass {
%       \figuredBassIndugio
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
