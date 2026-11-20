\version "2.25.13"

% ----------------------------------------

melodyPonte = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  g4 b d^"etc."
}

innerPonte = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <b d>4 <b d f> <b d f>
}

upperPonte = {
  \time 3/4

  <<
    \new Voice = "melodyPonte" \melodyPonte
    \new Voice = "innerPonte" \innerPonte
  >>
}

basslinePonte = \relative c {
  \time 3/4
  \override Stem.stencil = ##f

  g4^"V" g^"V" g^"V"
}

figuredBassPonte = \figuremode {
  <5 3>4 <7 5 3> <7 5 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperPonte
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslinePonte
%     }
%     \new FiguredBass {
%       \figuredBassPonte
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
