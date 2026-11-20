\version "2.25.13"

% ----------------------------------------

melodyQuiescenza = \relative c'' {
  \voiceOne
  \override Stem.stencil = ##f

  bf4 a b c
}

innerQuiescenza = \relative c' {
  \voiceTwo
  \override Stem.stencil = ##f

  e4 f d <e g>
}

upperQuiescenza = {
  \time 4/4

  <<
    \new Voice = "melodyQuiescenza" \melodyQuiescenza
    \new Voice = "innerQuiescenza" \innerQuiescenza
  >>
}

basslineQuiescenza = \relative c {
  \time 4/4
  \override Stem.stencil = ##f

  c4^"V/IV" c^"IV" c^"V" c^"I"
}

figuredBassQuiescenza = \figuremode {
  <7- 3>4 <6 4> <7! 2> <5 3>
}

% ----------------------------------------

% \score {
%   \new PianoStaff
%   <<
%     \new Staff = "upper" {
%       \omit Staff.TimeSignature
%       \clef treble
%       \key c \major

%       \upperQuiescenza
%     }
%     \new Staff = "bassline" {
%       \omit Staff.TimeSignature
%       \clef bass
%       \key c \major

%       \basslineQuiescenza
%     }
%     \new FiguredBass {
%       \figuredBassQuiescenza
%     }
%   >>
%   \layout {
%     ragged-right = ##f
%     ragged-last = ##f
%   }
%   \midi { }
% }
