\version "2.25.13"

% ----------------------------------------

melodyModPrinnerAlt = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  e4 d c s c b
}

innerModPrinnerAlt = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <d g> <c g'(> fs) <fs a> <d b>
}

upperModPrinnerAlt = {
  \time 6/4

  <<
    \new Voice = "melodyModPrinnerAlt" \melodyModPrinnerAlt
    \new Voice = "innerModPrinnerAlt" \innerModPrinnerAlt
  >>
}

basslineModPrinnerAlt = \relative c {
  \time 6/4
  \override Stem.stencil = ##f

  c4^"I" b^"V" a^"VII/V" s d^"V/V" g,^"V"
}

figuredBassModPrinnerAlt = \figuremode {
  <5 3>4 <6 3> <7 3> <6+ 3> <7 _+> <5 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperModPrinnerAlt
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslineModPrinnerAlt
%     }
%     \new FiguredBass {
%       \figuredBassModPrinnerAlt
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
