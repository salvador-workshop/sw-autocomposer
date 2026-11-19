\version "2.25.13"

% ----------------------------------------

melodyRomanesca = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 g' c, c
}

innerRomanesca = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <d g> <c e> <g c>
}

upperRomanesca = {
  \time 4/4

  <<
    \new Voice = "melodyRomanesca" \melodyRomanesca
    \new Voice = "innerRomanesca" \innerRomanesca
  >>
}

basslineRomanesca = \relative c {
  \time 4/4
  \override Stem.stencil = ##f

  c4^"I" b^"V" a^"VI" e^"I"
}

figuredBassRomanesca = \figuremode {
  <5 3>4 <6 3> <5 3> <6 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperRomanesca
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslineRomanesca
%     }
%     \new FiguredBass {
%       \figuredBassRomanesca
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
