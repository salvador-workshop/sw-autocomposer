\version "2.25.13"

% ----------------------------------------

melodyPrinner = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f' s e
}

innerPrinner = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> b <e g>
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

  c4^"IV" d^"I" b^"VII" s c^"I"
}

figuredBassPrinner = \figuremode {
  <5 3>4 <4 3> <6 5> s <5 3>
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
