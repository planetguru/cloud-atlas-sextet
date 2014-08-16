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
  r1^\ppp  r1 r1 r1  c'1 b e c d b e c d~ << {d2} {b2} >> a 
  r1 r1 r1 r1 r1 r1 r1 r1  d b e c d~ << {d2} {b2} >> a 

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
  g d' c b g2 c4 b a2 d4 c  a1
  <d,, g>4 d' c b  <g b>2^\fermata <fs a>2^\fermata
}

left = \relative c' {
  \global
  % Music follows here.
  <c e>2^\p a2 <b e g>2 g2 <a c e> e <f e'> d'
  <c d>2 a2 <b e g>2 g2 <a c e> e <f e'> d'
  \clef treble \stemUp <g b>1 <e g b> <e a c> <f a c>
  \clef bass \stemDown <b,, g'>2 <e b'> <d d'>2 <d d'>
  
    <c e>2^\p a2 <b e g>2 g2 <a c e> e <f e'> d'
  <c d>2 a2 <b e g>2 g2 <a c e> e <f e'> d'
  \clef treble \stemUp <g b>1 <e g b> <e a c> <f a c>
  \clef bass \stemDown <b,, g'>2 <e b'> <d d'>2 <d d'>

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
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}
