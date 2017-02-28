\version "2.18"
#(set-global-staff-size 15.15)
parend =
#(define-event-function (parser location dyn) (ly:event?)
   (make-dynamic-script
    #{ \markup \concat {
         \normal-text \italic \fontsize #2 (
	 \pad-x #0.2 #(ly:music-property dyn 'text)
	 \normal-text \italic \fontsize #2 )
       }
    #}))

voiceOne = {
  \key d \major
  \repeat unfold 4 { cis''8.. r32  } | 
  \times 2/3 { r4 \repeat unfold 2 { a'8.. r32 } } a'8.. r32 \repeat unfold 4 { a'16-. } |
  \repeat unfold 2 { cis''8.. r32  } | 
  \times 2/3 { \repeat unfold 4 { a'8.. r32  } } |
  \repeat unfold 2 { fis'8..-- r32  } \repeat unfold 2 { fis'8-_  } \repeat unfold 4 fis'16-.
  \times 2/3 { r4 \repeat unfold 2 { fis'8.. r32 } } \times 2/3 { fis'4-_ fis'-_ fis'-_ }
  \repeat unfold 2 { fis'8..-- r32  } \repeat unfold 2 { fis'8-_  }
  \times 8/12 { \repeat unfold 6 { b'8-. [b'-.] }}
  \repeat unfold 2 { fis''8..-- r32  } \repeat unfold 2 { fis''8-_  } \repeat unfold 4 fis''16-. |
  \times 2/3 { r4 \repeat unfold 2 { e''8.. r32 } } \times 2/3 { \repeat unfold 3 e''4-_ } |
  \repeat unfold 2 { d''8..--^\espressivo r32  } \times 4/5 { fis'8-_ [ fis'-_ fis'-_ fis'-! ] } 
  \times 2/3 { \repeat unfold 2 { cis''8. r16  } \repeat unfold 2 { c''8. r16  } r4 } |
  \repeat unfold 2 { d''4-_  } fis'8 fis' \times 2/3 { fis'-. fis'-. fis'-. } |
  cis''8.-_ cis''-. c''-_ c''-! |
  b'4 b'8.. r32 \times 2/3 { fis'4-. fis' fis'-. } |
  r8 bes'-. bes'-. bes' bes'-. r |
  \repeat unfold 12 { b'16-! } \repeat unfold 4 { b'16-. } |
  \repeat unfold 8 { b'16-. } \repeat unfold 4 { b'16 }  |
  \repeat unfold 4 { b'16 [ b'16 b'16 ] } |
  \repeat unfold 3 { b'16 [ b'16 b'16 ] } b'16 [ b'16 b'16 b'16 ] |
}
voiceTwo = {
  %\clef soprano
  \key d \major
  \repeat unfold 4 { a'8.. r32  } |
  \times 2/3 { r4 \repeat unfold 2 { f'8.. r32 } } f'8.. r32 \repeat unfold 4 { f'16-. } |
  \repeat unfold 2 { a'8.. r32  } | 
  \times 2/3 { \repeat unfold 4 { f'8.. r32  } } |
  \repeat unfold 2 { d'8..-- r32  } \repeat unfold 2 { d'8-_  } \repeat unfold 4 d'16-. |
  \times 2/3 { r4 \repeat unfold 2 { d'8.. r32 } } \times 2/3 { d'4-_ d'-_ d'-_ }
  \repeat unfold 2 { d'8..-- r32  } \repeat unfold 2 { d'8-_  }
  \times 8/12 { \repeat unfold 6 { fis'8-. [fis'-.] }}
  \repeat unfold 2 { d''8..-- r32  } \repeat unfold 2 { d''8-_  } \repeat unfold 4 d''16-. |
  \times 2/3 { r4 \repeat unfold 2 { cis''8.. r32 } } \times 2/3 { \repeat unfold 3 c''4-_ } |
  \repeat unfold 2 { bes'8..--^\espressivo r32  } \times 4/5 { d'8-_ [ d'-_ d'-_ d'-! ] } 
  \times 2/3 { \repeat unfold 2 { a'8. r16  } \repeat unfold 2 { a'8. r16  } r4 } |
  \repeat unfold 2 { b'4-_  } d'8 d' \times 2/3 { d'-. d'-. d'-. } |
  ais'8.-_ ais'-. a'-_ a'-! |
  gis'4 gis'8.. r32 \times 2/3 { d'4-. d' d'-. } |
  r8 g'-. g'-. fis' fis'-. r |
  \repeat unfold 12 { fis'16-! } \repeat unfold 4 { fis'16-. } |
  \repeat unfold 8 { fis'16-. } \repeat unfold 4 { fis'16 }  |
}
voiceThree = {
  %\clef alto
  \key d \major
  fis'8.. r32  fis'8.. r32  fis'8.. r32  fis'8.. r32 |
  \times 2/3 { r4 \repeat unfold 2 { d'8.. r32 } } d'8.. r32 d'16-. d'16-. d'16-. d'16-. |
  \repeat unfold 2 { fis'8.. r32  } | 
  \times 2/3 { \repeat unfold 4 { d'8.. r32  } } |
  \repeat unfold 2 { bes8..-- r32  } \repeat unfold 2 { b8-_  } \repeat unfold 4 b16-. |
  \times 2/3 { r4 \repeat unfold 2 { cis'8.. r32 } } \times 2/3 { c'4-_ c'-_ c'-_ }
  \repeat unfold 2 { bes8..-- r32  } \repeat unfold 2 { b8-_  }
  \times 8/12 { \repeat unfold 6 { e'8-. [e'-.] }}
  \repeat unfold 2 { b'8..-- r32  } \repeat unfold 2 { bes'8-_  } \repeat unfold 4 bes'16-. |
  \times 2/3 { r4 \repeat unfold 2 { a'8.. r32 } } \times 2/3 { \repeat unfold 3 a'4-_ } |
  \repeat unfold 2 { g'8..--^\espressivo r32  } \times 4/5 { bes8-_ [ bes-_ bes-_ bes-! ] } 
  \times 2/3 { \repeat unfold 2 { fis'8. r16  } \repeat unfold 2 { fis'8. r16  } r4 } |
  \repeat unfold 2 { fis'4-_  } bes8 bes \times 2/3 { bes-. bes-. bes-. } |
  gis'8.-_ gis'-. g'-_ g'-! |
  d'4 d'8.. r32 \times 2/3 { bes'4-. bes' bes'-. } |
  r8 e'-. e'-. ees' ees'-. r |
  \repeat unfold 12 { e'16-! } \repeat unfold 4 { e'16-. } |
  \repeat unfold 8 { e'16-. } \repeat unfold 4 { e'16 }  |
}
voiceFour = {
  %\clef tenor
  \clef "treble_8"
  \key d \major
  d'8.. r32 d'8.. r32  d'8.. r32  d'8.. r32 |
  \times 2/3 { r4 \repeat unfold 2 { bes8.. r32 }  } bes8.. r32 bes16-. bes16-. bes16-. bes16-. |
  \repeat unfold 2 { d'8.. r32  } | 
  \times 2/3 { \repeat unfold 4 { bes8.. r32  } } |
  \repeat unfold 2 { g8..-- r32  } \repeat unfold 2 { g8-_  } \repeat unfold 4 g16-. |
  \times 2/3 { r4 \repeat unfold 2 { g8.. r32 } } \times 2/3 { g4-_ g-_ g-_ }
  \repeat unfold 2 { g8..-- r32  } \repeat unfold 2 { g8-_  }
  \times 8/12 { \repeat unfold 6 { c'8-. [c'-.] }}
  \repeat unfold 2 { g'8..-- r32  } \repeat unfold 2 { g'8-_  } \repeat unfold 4 g'16-. |
  \times 2/3 { r4 \repeat unfold 2 { fis'8.. r32 } } \times 2/3 { \repeat unfold 3 fis'4-_ } |
  \repeat unfold 2 { e'8..--^\espressivo r32  } \times 4/5 { g8-_ [ g-_ g-_ g-! ] } 
  \times 2/3 { \repeat unfold 2 { e'8. r16  } \repeat unfold 2 { ees'8. r16  } r4 } |
  \repeat unfold 2 { e'4-_  } a8 a \times 2/3 { a-. a-. a-. } |
  e'8.-_ e'-. ees'-_ ees'-! |
  cis'4 cis'8.. r32 \times 2/3 { g4-. g g-. } |
  r8 cis'-. cis'-. c'-. c'-. r |
  \repeat unfold 12 { cis'16-! } \repeat unfold 4 { cis'16-. } |
  \repeat unfold 8 { cis'16-. } \repeat unfold 4 { cis'16 }  |
}
voiceFive = {
  \clef bass
  \key d \major
  bes8.. r32  bes8.. r32  bes8.. r32  bes8.. r32  |
  \times 2/3 { r4 \repeat unfold 2 { g8.. r32 }  } g8.. r32 g16-. g16-. g16-. g16-. |
  \repeat unfold 2 { bes8.. r32  } | 
  \times 2/3 { \repeat unfold 4 { g8.. r32  } } |
  \repeat unfold 2 { a,8..-- r32  } \repeat unfold 2 { a,8-_  } \repeat unfold 4 a,16-. |
  \times 2/3 { r4 \repeat unfold 2 { a,8.. r32 } } \times 2/3 { a,4-_ a,-_ a,-_ }
  \repeat unfold 2 { a,8..-- r32  } \repeat unfold 2 { a,8-_  } |
  \times 8/12 { \repeat unfold 6 { d8-. [d-.] }} |
  R1 |
  R1 |
  \repeat unfold 2 { a,8..--^\espressivo r32  } \times 4/5 { a,8-_ [ a,-_ a,-_ a,-! ] } |
  \times 2/3 { \repeat unfold 2 { d8. r16  } \repeat unfold 2 { d8. r16  } r4 } |
  \repeat unfold 2 { g,4-_  } g,8 g, \times 2/3 { g,-. g,-. g,-. } |
  fis,8.-_ fis,-. f,-_ f,-! |
  e,4 e,8.. r32 \times 2/3 { a,4-. a, a,-. } |
  r8 d-. d-. d-. d-. r |
  \repeat unfold 12 { d16-! } \repeat unfold 4 { d16-. } |
  \repeat unfold 8 { d16-. } \repeat unfold 4 { d16 }  |
}
qcr =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..^\p^\< s32\parend^\f }
#})
qcrmf =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..^\p^\< s32\parend^\mf }
#})
qcrff =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..^\p^\< s32\parend^\ff }
#})
qcrppff =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..^\pp^\< s32\parend^\ff }
#})
qcrppf =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..^\pp^\< s32\parend^\f }
#})
qcrpp =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..^\pp^\< s32\parend^\f }
#})
qcrmp =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..^\mp^\< s32\parend^\f }
#})
qtripcr =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..*2/3^\p^\< s32*2/3\parend^\f }
#})
qtripcrpp =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..*2/3^\pp^\< s32*2/3\parend^\f }
#})
qtripcrppmp =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..*2/3^\pp^\< s32*2/3\parend^\mp }
#})
qtripcrmf =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..*2/3^\p^\< s32*2/3\parend^\mf }
#})

dynOne = {
  \qcrmp 4
  s4*2/3 \qtripcrpp 2 \qcrppff 1 s4^\p
  \qcrppf 2
  \qtripcrppmp 4
  \qcrmf 2 s4^\mp s4^\< |
  s4*2/3\parend^\f \qtripcrppmp 2 s2^\mp |
  \qcrmf 1 \qcr 1 s4^\mf |
  s2^\mp s4*2/3 s2*2/3^\mf |
}

dynTwo = {
  \qcrmf 2 s4^\p s4^\mp |
  s4*2/3 \qtripcrppmp 1 \qtripcrmf 1 s4*2/3^\p s4*2/3^\mp s4*2/3^\p |
}

dynThree = {
  s2^\mp s2*4/5^\p |
  s2*2/3^\mp s4*2/3 s2*2/3^\p |
  s2^\mp s2^\p |
  s4.^\mf s4.^\mp
  s4^\mp \qcr 1 s2^\mp |
  s8 s4^\mf s4^\p s8 |
  s1^\pp^\< |
  s2.^\mf
}

agnusOne = \lyricmode {
  A A A A
  gnu gnu gnu n n n n
  A A 
  gnu gnu gnu gnu
  \repeat unfold 8 Dei
  \repeat unfold 5 Dei
  \repeat unfold 4 A
  \repeat unfold 12 Dei
}
agnusTwo = \lyricmode {
  A A gnu u   n n n n
  Dei ei Dei ei i
}

agnusThree = \lyricmode {
  A A gnu nu nu nu
  \repeat unfold 4 Dei
  A A gnu gnu u u us
  De e e e
  A A nu gnu nu
  Dei e e i
  \repeat unfold 28 { A }
}

piecemarks = {
  \tempo "fort" 4=96
  \time 4/4
  s1*2 |
  \time 2/4
  s2
  \time 2/3
  s1*2/3
  \tempo "doux"
  \time 4/4
  s1*2 |
  \time 3/4
  s2. |
  \tempo "plat"
  \time 4/4
  s1 |
  \tempo "céleste"
  s1*2 |
  \tempo "chalereux"
  \time 9/10
  s1*9/10 |
  \time 5/6
  s1*5/6 |
  \tempo "intime, plus lent"
  \time 4/4
  s1 |
  \time 6/8
  s2. |
  \time 4/4
  s1 |
  \time 3/4
  s2. |
  \time 4/4
  \tempo "allant"
  s1 |
  \time 3/4
  s2. |
  \time 12/16
  s2. |
  \compoundMeter #'((9 4 16))
  s1*11/16 |
}
\paper {
  ragged-right = ##f
  two-sided = ##t
  inner-margin = 3\cm
  outer-margin = 2\cm
  bottom-margin = 1.5\cm
  top-margin = 2.3\cm
  min-systems-per-page = #2
  ragged-last-bottom = ##f
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  score-markup-spacing = #'((basic-distance . 8) (minimum-distance . 5) (padding . 0.5) (stretchability . 60))
  system-system-spacing = #'((basic-distance . 12) (minimum-distance . 10) (padding . 8) (stretchability . 35))
  markup-system-spacing = #'((basic-distance . 5) (minimum-distance . 5) (padding . 2.5) (stretchability . 30))
  top-system-spacing = #'((basic-distance . 12) (minimum-distance . 10) (padding . 8) (stretchability . 60))
  last-bottom-spacing = #'((basic-distance . 6) (minimum-distance . 4) (padding . 2) (stretchability . 60))
}
\score {
\new ChoirStaff <<
  \new Staff \new Voice = "voiceOne" << \voiceOne { \dynOne \dynTwo \dynThree } \piecemarks >>
  \new Lyrics \lyricsto "voiceOne" { \agnusOne \agnusTwo \agnusThree }
  \new Staff \new Voice = "voiceTwo" << \voiceTwo { \dynOne \dynTwo \dynThree } >>
  \new Lyrics \lyricsto "voiceTwo" { \agnusOne \agnusTwo \agnusThree }
  \new Staff \new Voice = "voiceThree" << \voiceThree { \dynOne \dynTwo \dynThree } >>
  \new Lyrics \lyricsto "voiceThree" { \agnusOne \agnusTwo \agnusThree }
  \new Staff \new Voice = "voiceFour" << \voiceFour { \dynOne \dynTwo \dynThree } >>
  \new Lyrics \lyricsto "voiceFour" { \agnusOne \agnusTwo \agnusThree }
  \new Staff \new Voice = "voiceFive" << \voiceFive { \dynOne s\breve \dynThree } >>
  \new Lyrics \lyricsto "voiceFive" { \agnusOne  \agnusThree }
>>
\layout{
  \context {
    \Voice
    \override Hairpin.minimum-length = #10
    \override DynamicText.extra-spacing-width = #'(-0.3 . 0.3)
    \override TupletBracket.direction = #UP
  }
  \context {
    \Staff
    \numericTimeSignature
  }
}
}