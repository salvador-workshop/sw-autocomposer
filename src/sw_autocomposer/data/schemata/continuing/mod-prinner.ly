\version "2.25.13"

% ----------------------------------------

melodyModPrinner = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  e4 d c s b
}

innerModPrinner = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <d g> <c g'(> fs) <d b>
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

  c4^"I" b^"V" a^"VII/V" s g^"V"
}

figuredBassModPrinner = \figuremode {
  <5 3>4 <6 3> <7 3> <6+ 3> <5 3>
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
