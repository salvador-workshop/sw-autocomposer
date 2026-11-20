\version "2.25.13"

% ----------------------------------------

melodyIndugio = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  d4^"Brief passage can be inserted between first two stages." f a c, b
}

innerIndugio = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <c d>4 <c d> <c d> <c d> <b d>
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

  f,4^"II" f^"II" f^"II" fs^"V/V" g^"V"
}

figuredBassIndugio = \figuremode {
  <6 5>4 <6 5> <6 5> <6 5> <5 3>
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
