\version "2.12.3"
\include "english.ly"

\header {
  title = "Cloud Atlas Sextet"
  instrument = "Piano and Strings"
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
  r1^\ppp  r1 r1 r1  c'1 b e c d b e c d~ << {d2} {b2} >> a
  r1 r1 r1 r1 r1 r1 r1 r1  d b e d a

  % oscilate
  r1 r1 r1 r1 r r r r

}

secondViolin = \relative c'' {
  \global
  % Music follows here.
  r1^\ppppp r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1
  g8^\upbow^. r g8^. r  g8^.  r g8^. r g8^. r g8^. r  g8^.  r g8^. r g8^. r g8^. r  g8^.  r g8^. r g8^. r g8^. r  g8^.  r g8^. r
  g8^. r g8^. r  g8^.  r g8^. r g8^. r g8^. r  g8^.  r g8^. r g8^. r g8^. r  g8^.  r g8^. r g8^. r g8^. r  g8^.  r g8^. r
  g8^. r g8^. r  g8^.  r g8^. r g8^. r g8^. r  g8^.  r g8^. r g8^. r g8^. r  g8^.  r g8^. r g8^. r g8^. r  g8^.  r g8^. r
  g8^. r g8^. r  g8^.  r g8^. r

  %oscillate
  r1 r1 r1 r1 r r r r
}

cello = \relative c {
  \global
  % Music follows here.
  r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1
  r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1
  
  %oscillate 
  g16 e g e g e g e  a e a e a e a e g e g e g e g e c' e, c' e, b' e, b' e,
}

secondCello = \relative c {
  \global
  % Music follows here.
  r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1
  c,8^\pp^. r c8^. r c8^. r c8^. r  e8^. r e8^. r e8^. r e8^. r  a8^. r a8^. r a8^. r a8^. r  <f>8^. r <f>8^. r <f>8^. r <f>8^. r
  c8^\pp^. r c8^. r c8^. r c8^. r  b8^. r b8^. r b8^. r b8^. r  a'8^. r a8^. r a8^. r a8^. r  f8^. r f8^. r f8^. r f8^. r
  g8^. r g8^. r g8^. r g8^. r   e^. r e^. r e^. r e^. r   a^. r a^. r a^. r a^. r   d^. r d^. r d^. r d^. r   d^. r d^. r d^. r d^. r
  
  %oscillate
  c^. r   c^. r   c^. r   c^. r  e^. r  e^. r  e^. r  e^. r   a^.r  a^.r  a^.r  a^.r   f^.r  f^.r  f^.r  f^.r   c^.r c^.r c^.r c^.r   b'^.r b^.r b^.r b^.r 
  a^.r  a^.r  a^.r  a^.r  f^.r  f^.r  f^.r  f^.r   g^.r  g^.r  g^.r  g^.r  e^.r  e^.r  e^.r  e^.r  a^.r  a^.r  a^.r  a^.r  f^.r f^.r f^.r f^.r 
  g^.r  g^.r  g^.r  g^.r  e^.r e^.r  e^.r  e^.r  a^.r  a^.r a^.r a^.r  d,^.r d^.r d^.r d^.r
  
  %flute
  % starts same as oscillate with:    c^. r   c^. r   c^. r   c^. r 
}

right = \relative c'' {
  \global
  % Music follows here.
  g4 c4~c g' g b,~b g' g c,~c g' g c,~c a
  g c4~c g' g b,~b g' g c,~c g' g c,~c a'
  g d' c b g2 c4 b a2 d4 c  a1
  <d,, g>4 d' c b  <g b>2^\fermata <fs a>2^\fermata

  g4 c4~c g' g b,~b g' g c,~c g' g c,~c~c
  g c4~c g' g b,~b g' g c,~c g' g c,~c a'
  g d' c b g2 c4 b a2 d,4 c  b1 a1

  %oscillate
  g4 c4~c g' g b,~b g' g c,~c g' g c,~c~c
  g c4~c g' g b,~b g' g c,~c g' g c,~c a'
  g d' c b g2 c4 b a2 d4 c  a1
  <d,, g>4 d' c b  g2 c4 b a2 d4 c b2 c

}

left = \relative c' {
  \global
  % Music follows here.
  <c e>2^\p a2 <b e g>2 g2 <a c e> e <f e'> d'
  <c d>2 a2 <b e g>2 g2 <a c e> e <f e'> d'
  \clef treble \stemUp <g b>1 <e g b> <e a c> <f a c>
  \clef bass \stemDown <b,, g'>2 <e b'> <d d'>2 <d d'>

  r1 r1 r1 r1 r1 r1 r1 r1
  \clef treble \stemUp <g' b>1 <e g b> <e a c> <d g> <d g>
  \clef bass \stemDown

  %oscillate
  r1 r1 r1 r1 r1 r1 r1 r1
  \clef treble \stemUp <g b>1 <e g b> <e a c> <f a c>
  \clef bass \stemDown <b,, g'>2 <e b'> <d d'>4

}

violinPart = \new Staff \with {
  instrumentName = "Violin 1"
  midiInstrument = "violin"
} \violin

secondViolinPart = \new Staff \with {
  instrumentName = "Violin 2"
  midiInstrument = "violin"
} \secondViolin

celloPart = \new Staff \with {
  instrumentName = "Cello 1"
  midiInstrument = "cello"
} { \clef bass  \cello}

secondCelloPart = \new Staff \with {
  instrumentName = "Cello 2"
  midiInstrument = "cello"
} { \clef bass  \secondCello}

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
    \secondViolinPart
    \celloPart
    \secondCelloPart
    \pianoPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 58 4)
    }
  }
}
