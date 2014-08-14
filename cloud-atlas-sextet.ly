\version "2.12.3"
\include "english.ly"

\header {
  title = "Cloud Atlas Title"
  instrument = "Piano"
  composer = "Tom Tykwer"
  arranger = "Christopher Lacy-Hulbert"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante"
}

violin = \relative c'' {
  \global
  % Music follows here.
  %r2 ~ r2 ~ r2 g4 ~ g ~ g

}

right = \relative c'' {
  \global
  % Music follows here.
  g4 c4~c g' g b,~b g' g c,~c g' g c,~c a
  g c4~c g' g b,~b g' g c,~c g' g c,~c a'
  g d' c b g2 c4 b a2 d4 c  a1
  <d,, g>4 d' c b <e, g>2 c'4 b a2 d4 c <g b>2 <fs a>2~<fs a>1
}

left = \relative c' {
  \global
  % Music follows here.
  <c e>2 a2 <b e g>2 g2 <a c e> e <f e'> d'
  <c d>2 a2 <b e g>2 g2 <a c e> e <f e'> d'
  \clef treble \stemUp <g b>1 <e g b> <e e'> <g e'>
  \clef bass \stemDown <b,, g'> <e b> <a c> <d, d'>2 <d d'>~<d d'>1

}

violinPart = \new Staff \with {
  instrumentName = "Violin"
  midiInstrument = "violin"
} \violin

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \violinPart
    \pianoPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 62 4)
    }
  }
}
