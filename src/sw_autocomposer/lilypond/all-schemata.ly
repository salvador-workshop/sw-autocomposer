\version "2.25.13"
\language "english" 

% Opening Schemata
\include "../data/schemata/opening/meyer.ly"
\include "../data/schemata/opening/jupiter.ly"
\include "../data/schemata/opening/jupiter-alt.ly"
\include "../data/schemata/opening/aprile.ly"
\include "../data/schemata/opening/pastorella.ly"
\include "../data/schemata/opening/do-re-mi.ly"
\include "../data/schemata/opening/sol-fa-mi.ly"
\include "../data/schemata/opening/sol-fa-mi-alt.ly"
\include "../data/schemata/opening/romanesca.ly"

% Continuing Schemata
\include "../data/schemata/continuing/prinner.ly"
\include "../data/schemata/continuing/prinner-alt.ly"
\include "../data/schemata/continuing/mod-prinner.ly"
\include "../data/schemata/continuing/mod-prinner-alt.ly"
\include "../data/schemata/continuing/passo-indietro.ly"
\include "../data/schemata/continuing/mod-passo-indietro.ly"

% Contrasting Schemata
\include "../data/schemata/contrasting/quiescenza.ly"
\include "../data/schemata/contrasting/ponte.ly"
\include "../data/schemata/contrasting/fenaroli.ly"
\include "../data/schemata/contrasting/indugio.ly"

%------------------------------------------------------------

\header {
  title = "Harmonic Schemata"
}

\markup { \fontsize #3 \bold "Opening Schemata" }

\score {
  \header { 
    piece = "Meyer" 
  }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperMeyer
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineMeyer
    }
    \new FiguredBass {
      \figuredBassMeyer
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { 
    piece = "Jupiter" 
  }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperJupiter
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineJupiter
    }
    \new FiguredBass {
      \figuredBassJupiter
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { 
    piece = "JupiterAlt" 
  }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperJupiterAlt
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineJupiterAlt
    }
    \new FiguredBass {
      \figuredBassJupiterAlt
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { 
    piece = "Aprile" 
  }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperAprile
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineAprile
    }
    \new FiguredBass {
      \figuredBassAprile
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { 
    piece = "Pastorella" 
  }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperPastorella
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslinePastorella
    }
    \new FiguredBass {
      \figuredBassPastorella
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { 
    piece = "DoReMi" 
  }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperDoReMi
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineDoReMi
    }
    \new FiguredBass {
      \figuredBassDoReMi
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { 
    piece = "SolFaMi" 
  }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperSolFaMi
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineSolFaMi
    }
    \new FiguredBass {
      \figuredBassSolFaMi
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { 
    piece = "SolFaMiAlt" 
  }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperSolFaMiAlt
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineSolFaMiAlt
    }
    \new FiguredBass {
      \figuredBassSolFaMiAlt
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { 
    piece = "Romanesca" 
  }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperRomanesca
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineRomanesca
    }
    \new FiguredBass {
      \figuredBassRomanesca
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

%------------------------------------------------------------

\markup { \fontsize #3 \bold "Continuing Schemata" }

\score {
  \header { piece = "Prinner" }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperPrinner
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslinePrinner
    }
    \new FiguredBass {
      \figuredBassPrinner
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { piece = "PrinnerAlt" }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperPrinnerAlt
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslinePrinnerAlt
    }
    \new FiguredBass {
      \figuredBassPrinnerAlt
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { piece = "ModPrinner" }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperModPrinner
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineModPrinner
    }
    \new FiguredBass {
      \figuredBassModPrinner
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { piece = "ModPrinnerAlt" }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperModPrinnerAlt
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineModPrinnerAlt
    }
    \new FiguredBass {
      \figuredBassModPrinnerAlt
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { piece = "PassoIndietro" }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperPassoIndietro
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslinePassoIndietro
    }
    \new FiguredBass {
      \figuredBassPassoIndietro
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { piece = "ModPassoIndietro" }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperModPassoIndietro
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineModPassoIndietro
    }
    \new FiguredBass {
      \figuredBassModPassoIndietro
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

%------------------------------------------------------------

\markup { \fontsize #3 \bold "Contrasting Schemata" }

\score {
  \header { piece = "Quiescenza" }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperQuiescenza
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineQuiescenza
    }
    \new FiguredBass {
      \figuredBassQuiescenza
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { piece = "Ponte" }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperPonte
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslinePonte
    }
    \new FiguredBass {
      \figuredBassPonte
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { piece = "Fenaroli" }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperFenaroli
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineFenaroli
    }
    \new FiguredBass {
      \figuredBassFenaroli
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}

\score {
  \header { piece = "Indugio" }
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \omit Staff.TimeSignature
      \clef treble
      \key c \major

      \upperIndugio
    }
    \new Staff = "bassline" {
      \omit Staff.TimeSignature
      \clef bass
      \key c \major

      \basslineIndugio
    }
    \new FiguredBass {
      \figuredBassIndugio
    }
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
  }
  \midi { }
}
