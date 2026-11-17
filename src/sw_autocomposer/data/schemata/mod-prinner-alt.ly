\version "2.25.13"

% ----------------------------------------

melodyModPrinnerAlt = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f' e
}

innerModPrinnerAlt = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> <e g>
}

upperModPrinnerAlt = {
  \time 4/4

  <<
    \new Voice = "melodyModPrinnerAlt" \melodyModPrinnerAlt
    \new Voice = "innerModPrinnerAlt" \innerModPrinnerAlt
  >>
}

basslineModPrinnerAlt = \relative c {
  \time 4/4
  \override Stem.stencil = ##f

  c4 d b c
}

figuredBassModPrinnerAlt = \figuremode {
  <5 3>4 <4 3> <6 5> <5 3>
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
