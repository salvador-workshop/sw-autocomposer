\version "2.25.13"

% ----------------------------------------

melodyPastorella = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  e4 d f e
}

innerPastorella = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <b d f> <b d f> <e g>
}

upperPastorella = {
  \time 4/4

  <<
    \new Voice = "melodyPastorella" \melodyPastorella
    \new Voice = "innerPastorella" \innerPastorella
  >>
}

basslinePastorella = \relative c {
  \time 4/4
  \override Stem.stencil = ##f

  c4^"I" g^"V" g^"V" c^"I"
}

figuredBassPastorella = \figuremode {
  <5 3>4 <7> <7> <5 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperPastorella
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslinePastorella
%     }
%     \new FiguredBass {
%       \figuredBassPastorella
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
