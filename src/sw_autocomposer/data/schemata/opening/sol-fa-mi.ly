\version "2.25.13"

% ----------------------------------------

melodySolFaMi = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  g'4 f f e
}

innerSolFaMi = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  <e g>4 <f a> <f g> <e g>
}

upperSolFaMi = {
  \time 4/4

  <<
    \new Voice = "melodySolFaMi" \melodySolFaMi
    \new Voice = "innerSolFaMi" \innerSolFaMi
  >>
}

basslineSolFaMi = \relative c {
  \time 4/4
  \override Stem.stencil = ##f

  c4^"I" d^"II" b^"V" c^"I"
}

figuredBassSolFaMi = \figuremode {
  <5 3>4 <5 3> <6 5> <5 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperSolFaMi
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslineSolFaMi
%     }
%     \new FiguredBass {
%       \figuredBassSolFaMi
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
