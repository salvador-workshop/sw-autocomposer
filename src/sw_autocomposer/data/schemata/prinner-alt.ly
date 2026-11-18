\version "2.25.13"

% ----------------------------------------

melodyPrinnerAlt = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  c4 b f' s e e
}

innerPrinnerAlt = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f g> <f g> b <e g> <e g>
}

upperPrinnerAlt = {
  \time 6/4

  <<
    \new Voice = "melodyPrinnerAlt" \melodyPrinnerAlt
    \new Voice = "innerPrinnerAlt" \innerPrinnerAlt
  >>
}

basslinePrinnerAlt = \relative c {
  \time 6/4
  \override Stem.stencil = ##f

  c4^"VI" d^"I" b^"VII" s c^"V" c^"I" 
}

figuredBassPrinnerAlt = \figuremode {
  <5 3>4 <4 3> <6 5> s <5 3> <5 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperPrinnerAlt
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslinePrinnerAlt
%     }
%     \new FiguredBass {
%       \figuredBassPrinnerAlt
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
