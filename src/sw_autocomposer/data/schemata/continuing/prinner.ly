\version "2.25.13"

% ----------------------------------------

melodyPrinner = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  a'4 g f s e
}

innerPrinner = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <a' c>4 <g c> <f c'(>  b) <e, g>
}

upperPrinner = {
  \time 5/4

  <<
    \new Voice = "melodyPrinner" \melodyPrinner
    \new Voice = "innerPrinner" \innerPrinner
  >>
}

basslinePrinner = \relative c {
  \time 5/4
  \override Stem.stencil = ##f

  f4^"IV" e^"I" d^"VII" s c^"I"
}

figuredBassPrinner = \figuremode {
  <5 3>4 <6 3> <7 3> <6 3> <5 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperPrinner
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslinePrinner
%     }
%     \new FiguredBass {
%       \figuredBassPrinner
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
