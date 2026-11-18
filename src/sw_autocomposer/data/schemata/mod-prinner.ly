\version "2.25.13"

% ----------------------------------------

melodyModPrinner = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f' s e
}

innerModPrinner = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> fs <e g>
}

upperModPrinner = {
  \time 5/4

  <<
    \new Voice = "melodyModPrinner" \melodyModPrinner
    \new Voice = "innerModPrinner" \innerModPrinner
  >>
}

basslineModPrinner = \relative c {
  \time 5/4
  \override Stem.stencil = ##f

  c4^"I" d^"V" b^"VII/V" s c^"V"
}

figuredBassModPrinner = \figuremode {
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

%       \upperModPrinner
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslineModPrinner
%     }
%     \new FiguredBass {
%       \figuredBassModPrinner
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
