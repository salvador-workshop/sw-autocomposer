\version "2.25.13"

% ----------------------------------------

melodyPrinnerAlt = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  a'4 g f s b, e
}

innerPrinnerAlt = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <a' c>4 <g c> <f c'(>  b) <b, d f> <e g>
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

  f4^"IV" e^"I" d^"VII" s g,^"V" c^"I" 
}

figuredBassPrinnerAlt = \figuremode {
  <5 3>4 <6 3> <7 3> <6 3> <7> <5 3>
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
