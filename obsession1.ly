\version "2.18"
#(set-global-staff-size 14.14)
%%%% next g d fis b
%%%%% next e b d gis
%%%%% b a d fis
%%%%% cis b e gis
%%$%%% fis gis cis ais
\pointAndClickOff
hairtip = \once \override Hairpin #'circled-tip = ##t
voiceOne = \relative c''' {
  \key d \major
  R1*3 |
  r2 g2^\p^\< ~ |
  \hairtip
  << g2. {s2^\> s8 s8^\!} >> r4 |
  e1^\p |
  R1 |
  r2 fis2 |
  e1^\startTrillSpan ~
  e1 ~ |
  e4\stopTrillSpan r r2 |
  r2. d4 ~ |
  d2. r4 |
  cis1 ~ |
  cis2 r |
  R1 |
  fis1 |
  cis1 ~ 
  cis1 |
  R1 |
  r2 d2 |
  e1^\startTrillSpan ~
  e1 ~ |
  e1 ~ |
  e1 ~ |
  e4.\stopTrillSpan r8 b2 |
  R1 |
  e1 |
  R1 |
  R1 |
  R1 |
  R1^"(only last beat)" |
}
voiceTwo = {\relative c'' {
  \key f \major
  \times 4/5 { bes8^\ppp g a-! bes g  } \times 4/5 { a g^\prall f e-! bes' } |
  \times 4/5 { g a-! bes g-! bes } \times 4/5 { g a g^\prall f e } |
  \times 4/5 { a-! bes g a-! bes } \times 4/5 { g-! bes g a g^\prall } |
  \times 4/5 { f e a e f } \times 4/5 { g-!^\prall bes g a-! bes } |
  \times 4/5 { g a g^\prall f e } \times 4/5 { a e f-! bes g-! }
  \key g \major
}
\transpose c g { f'16 d'16 e'16 d'16^\prall c'16 b16-! f'16 d'16 e'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall a16-! f'16 d'16 e'16-! f'16 d'16-! f'16 d'16 e'16 d'16^\prall c'16 b16-! f'16 d'16 e'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall a16-! f'16 d'16-! f'16 | }
  \key fis \major
\transpose c fis { \times 8/9 {d'16 e'16 f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 }  \times 8/9 {b16-! f'16 d'16 e'16 d'16^\prall-! f'16 d'16-! f'16 d'16 }  \times 8/9 {e'16 d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall a16-! }  \times 8/9 {f'16 d'16 e'16-! f'16 d'16 e'16 d'16^\prall c'16 b16-! }  \times 8/9 {f'16 d'16-! f'16 d'16 e'16 d'16^\prall-! f'16-! f'16 d'16 }  \times 8/9 {e'16 d'16^\prall c'16-! f'16 d'16-! f'16 d'16 e'16 d'16^\prall }  \times 8/9 {c'16 b16 e'16 b16 c'16 d'16^\prall a16-! f'16 d'16 }  \times 8/9 {e'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 }  \times 8/9 {c'16 d'16^\prall a16 d'16-! f'16 d'16-! f'16-! f'16 d'16-! }  \times 8/9 {f'16 d'16 e'16 d'16^\prall-! f'16 d'16-! f'16 d'16 e'16 }
%%%%%%%\times 8/9 {d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall-! } 
}
  \key dis \major
  \times 8/10 { \transpose c dis {d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall-! } \transpose c dis { f'16 d'16 e'16-! } }  \transpose c dis { \times 8/10 { f'16 d'16 e'16 d'16^\prall c'16 b16-! f'16 d'16 e'16 d'16^\prall-! }  \times 8/10 { f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall }  \times 8/10 { a16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16-! }  \times 8/10 { f'16 d'16 e'16 d'16^\prall-! f'16 d'16 e'16 d'16^\prall c'16 b16 }  \times 8/10 { e'16 b16 c'16 d'16^\prall a16 d'16-! f'16 d'16-! f'16 d'16 }  \times 8/10 { e'16-! f'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 }  \times 8/10 { c'16 d'16^\prall a16-! f'16 d'16 e'16 d'16^\prall-! f'16 d'16 e'16 } 
%%%%%%%%%%%\times 8/10 { d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall-! }  
}

  %32
  \key cis \major
\transpose c cis { \times 4/6 { d'16^\prall c'16 b16 e'16 b16 c'16 }  \times 4/6 { d'16^\prall-! f'16 d'16 e'16 d'16^\prall c'16 }  \times 4/6 { b16 e'16 b16 c'16 d'16^\prall-! f'16 }  \times 4/6 { d'16 e'16-! f'16 d'16 e'16 d'16^\prall }  \times 4/6 { c'16 b16 e'16 b16 c'16 d'16^\prall }  \times 4/6 { a16 d'16-! f'16 d'16-! f'16 d'16 }  \times 4/6 { e'16 d'16^\prall c'16 b16-! f'16 d'16 }  \times 4/6 { e'16 d'16^\prall c'16 b16 e'16 b16 }  \times 4/6 { c'16 d'16^\prall a16-! f'16 d'16 e'16-! }  \times 4/6 { f'16 d'16 e'16 d'16^\prall c'16-! f'16 }  \times 4/6 { d'16 e'16 d'16^\prall c'16 b16-! f'16 }  \times 4/6 { d'16-! f'16 d'16 e'16 d'16^\prall c'16 }  \times 4/6 { b16 e'16 b16 c'16 d'16^\prall a16-! }  \times 4/6 { f'16-! f'16 d'16 e'16 d'16^\prall c'16 }  \times 4/6 { b16-! f'16 d'16 e'16 d'16^\prall c'16 }  \times 4/6 { b16 e'16 b16-! f'16 d'16 e'16 } 
%%%%%%%%\times 4/6 { d'16^\prall-! f'16 d'16 e'16 d'16^\prall c'16 }  \times 4/6 { b16 e'16 b16 c'16 d'16^\prall-! } 
}
  \key dis \major
  eis'32^\prall-!
  \repeat unfold 127 gis'32 |
}
voiceThree = {\relative c'' {
\clef "treble_8"
  \key d \major
  g16^\ppp e fis e^\prall    d-! g e fis   e^\prall d cis-! g'    e fis-! g e |
  fis e^\prall d cis fis cis-! g' e    fis e^\prall-! g e    fis-! g e fis |
  e^\prall d cis fis    cis d e^\prall b-!   g' e fis-! g   e-! g e fis |
  e^\prall d cis fis    cis d e^\prall b   e-! g e fis-!   g e fis e^\prall |
  d cis fis cis   d-!  g-! g e    fis e^\prall d cis   fis cis d e^\prall |
  \key dis \major
  \times 4/5 { bis8 eis-! gis eis fisis } \times 4/5 { eis^\prall dis cisis fisis cisis } |
  \times 4/5 { dis-! gis eis fisis-! gis } \times 4/5 { eis fisis eis^\prall dis cisis } |
  \times 4/5 { fisis cisis-! gis' eis fisis-! } \times 4/5 { gis eis fisis eis^\prall dis } |
  \key cis \major
  \times 2/3 { bis eis bis-! }
}
\transpose c cis { \times 2/3 {f'8 d'8 e'8 }  \times 2/3 {d'8^\prall c'8 b8-! }  \times 2/3 {f'8 d'8 e'8-! }  \times 2/3 {f'8 d'8 e'8 }  \times 2/3 {d'8^\prall c'8 b8 }  \times 2/3 {e'8 b8 c'8 }  \times 2/3 {d'8^\prall a8-! f'8 }  \times 2/3 {d'8 e'8 d'8^\prall-! }  \times 2/3 {f'8 d'8 e'8 }  \times 2/3 {d'8^\prall c'8 b8 }  \times 2/3 {e'8 b8 c'8-! }  \times 2/3 {f'8 d'8 e'8-! }  \times 2/3 {f'8 d'8-! f'8 }  \times 2/3 {d'8 e'8 d'8^\prall }  \times 2/3 {c'8 b8 e'8 }  \times 2/3 {b8 c'8 d'8^\prall-! }  \times 2/3 {f'8 d'8-! f'8 }  \times 2/3 {d'8 e'8 d'8^\prall-! }  \times 2/3 {f'8-! f'8 d'8 }
%%%%%%\times 2/3 {e'8 d'8^\prall c'8-! }
}
  \key a \major
  \transpose c a, { e'8 d'8^\prall c'8-! f'8 d'8-! f'8 d'8 e'8 d'8^\prall-! f'8 d'8-! f'8-! f'8 d'8 e'8 d'8^\prall c'8-! f'8 d'8 e'8-! f'8 d'8 e'8 d'8^\prall c'8 b8-! f'8 d'8-! f'8 d'8 e'8-! f'8
%%%%%%%%%%%%d'8 e'8 d'8^\prall c'8 b8-!
}

   %%% 2/3 quarter notes
   \key a \major
}
voiceFour = {\relative c' {
  \clef "treble_8"
  \key c \major
  \times 2/3 { f8^\ppp d e-! } \times 2/3 { f8 d e } \times 2/3 { d^\prall c-! f } \times 2/3 { d-! f d }
  \times 2/3 { e-! f d } \times 2/3 { e d^\prall c } \times 2/3 { b-! f' d-! } \times 2/3 { f d e-! } |
  \times 2/3 { f8 d e } \times 2/3 { d^\prall c b } \times 2/3 { e b c } \times 2/3 { d a-! f' } |
  \times 2/3 { d e d^\prall } \times 2/3 { c-! f d } \times 2/3 { e d^\prall c } \times 2/3 { b e b-! } |
  \times 2/3 { f' d e-! } \times 2/3 { f d e } \times 2/3 { d^\prall c b-! } \times 2/3 { f' d e } |
  \key cis \major
  dis8^\prall [ cis-! ]  fis [ dis ]   eis-! [ fis ]    dis-! [ fis ]   |
  dis eis  dis8^\prall cis bis eis bis-! fis' |
  dis eis dis^\prall-! fis dis eis-! fis dis-! |
  \key a \major
}
\transpose c a, { f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall-! f'16 d'16 e'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16-! f'16 d'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall a16-! f'16 d'16 e'16-! f'16 d'16 e'16 d'16^\prall c'16-! f'16 d'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16-! f'16 d'16 e'16-! f'16 d'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall a16-! f'16 d'16 e'16 d'16^\prall-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 
%%%%%%%%%c'16-!
}
  \key fis \major
  %8/9
  \transpose c fis, { \times 8/9 { c'16-! f'16 d'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 }  \times 8/9 { e'16 b16 c'16 d'16^\prall a16 d'16-! f'16 d'16 e'16 }  \times 8/9 { d'16^\prall c'16 b16-! f'16 d'16 e'16 d'16^\prall c'16 b16 }  \times 8/9 { e'16 b16 c'16 d'16^\prall a16-! f'16 d'16 e'16-! f'16 }  \times 8/9 { d'16 e'16 d'16^\prall c'16 b16-! f'16 d'16 e'16 d'16^\prall }  \times 8/9 { c'16 b16 e'16 b16 c'16 d'16^\prall-! f'16 d'16-! f'16 }  \times 8/9 { d'16 e'16-! f'16 d'16 e'16 d'16^\prall c'16 b16-! f'16 }  \times 8/9 { d'16 e'16 d'16^\prall c'16 b16 e'16 b16-! f'16 d'16-! } 
%%%%%%%%%%%%%%%%\times 8/9 { f'16 d'16 e'16-! } 
}

  
   %%%%% 4/5
   \key e \major
}
voiceFive = {\relative c' {
  \clef bass
  \key g \major
  c8^\ppp a b a^\prall g fis b fis |
  g a^\prall e a-! c a b a^\prall |
  g fis b fis-! c' a b-! c |
  a b a^\prall g fis b fis g |
  a^\prall e-! c' a b-! c a-! c |
  \key a \major
  \times 2/3 { b cis b^\prall-! } \times 2/3 { d b-! d } \times 2/3 { b cis b^\prall } \times 2/3 { a gis cis }  |
  \times 2/3 { gis a b^\prall-! } \times 2/3 { d b cis-! } \times 2/3 { d b cis } \times 2/3 { b^\prall a gis} |
  \times 2/3 { cis gis-! d' } \times 2/3 { b cis-! d } \times 2/3 { b cis b^\prall } \times 2/3 { a gis cis } |
  \key d \major
  \times 4/5 { cis, d e^\prall b-! g' }
}
\transpose c d, { \times 4/5 { d'8-! f'8 d'8 e'8 d'8^\prall }  \times 4/5 { c'8-! f'8 d'8 e'8-! f'8 }  \times 4/5 { d'8 e'8 d'8^\prall c'8 b8 }  \times 4/5 { e'8 b8 c'8-! f'8 d'8 }  \times 4/5 { e'8-! f'8 d'8 e'8 d'8^\prall }  \times 4/5 { c'8 b8 e'8 b8 c'8 }  \times 4/5 { d'8^\prall a8-! f'8 d'8 e'8-! }  \times 4/5 { f'8 d'8 e'8 d'8^\prall c'8 }  \times 4/5 { b8-! f'8 d'8 e'8 d'8-!^\prall }  }
  \key b \major
  %16
\transpose c b,, { f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16-! f'16 d'16 e'16-! f'16 d'16 e'16 d'16^\prall c'16 b16-! f'16 d'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall-! f'16 d'16 e'16 d'16^\prall-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall a16-! f'16 d'16 e'16-! f'16 d'16 e'16 d'16^\prall c'16 b16 e'16 b16-! f'16 d'16 e'16 d'16^\prall c'16-! f'16 d'16-! f'16

%%%%%%%%%d'16 e'16 d'16^\prall c'16 b16 e'16 b16 c'16 d'16^\prall a16 d'16-!
}
   %%%%%% 8/9
  \key fis \major
}
sanctusOne = \lyricmode {
  Sanc tus.
  ter ra
  cae li
  De -- us
}
sanctusTwo = \lyricmode {
  Sa __ _ _ Sa __ _ _ _ _ _ Sa __ _ _ Sa __ _ Sa __ _ _ _ _ _ _ Sa __ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ _ _
  Sa __ _ _ Sa __ _ _ _ _ _ _ _ _ Sa __ _ 
  Sa __ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ Sa __ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ Sa __ _ _
  Sa __ _ _ _ _ _ _ _ Sa __ _ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ Sa __ _ Sa __ _ _ _ Sa Sa __ _ _ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ _ Sa __ _ Sa Sa __ _ Sa __ _ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ _ _
  Sa __ _ _ Sa __ _ _ _ _ _ Sa __ _ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ _ _ _ _ _ _ Sa __ _ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ _ Sa __ _ Sa __ _ _ Sa Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ _ Sa __ _ _ _ _ _ _ _ _ _
  Sa __ _ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ _ Sa __ _ Sa __ _ _ _ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ Sa __ _ _ _ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa Sa __ _ _ _ _ _ Sa __ _ _ _ _ _ _ _ Sa __ _ _ _
}
sanctusThree = \lyricmode {
  Sa __ _ _ _ _ Sa __ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ _ _ Sa __ _ _ _ Sa __ _ _
  Sa __ _ _ _ _ _ _ _ _ _ _
  Sa __ _ _ 
  Sa __ _ 
  Sa __ _ _ _ _ _ _ _ _ _ _ _ 
  Sa __ _ _
  Sa __ _ _ _ _ _ _ _ _
  Sa
  Sa __ _ _ _ _ _ _ _ _ _ _ _
  Sa __ _ _ _ _ _ _ _ _
  Sa __ _ _
  Sa __ _ _ _ _ _ _ _
  Sa __ _ _
  Sa __ _ _ _ _ _ _ _
  Sa __ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ _ Sa __ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ _ _ Sa __ _ Sa __ _ _ _ Sa Sa __ _ _ _ _
  Sa __ _ Sa __ _ _ _ Sa __ _ Sa Sa __ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ Sa __ _ Sa __ _ _ Sa __ _ _ _ _ _
}
sanctusFour = \lyricmode {
  Sa __ _ _ Sa __ _ _ _ _ Sa __ _ Sa __ _ _ Sa __ _ _ _ _ _ Sa __ _ Sa __ _ _
  Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ _ _ Sa __ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ Sa __ _ _ _ _
  Sa __ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _
  Sa __ _ _ _ Sa __ _ _ Sa __ _
  Sa __ _ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ _ Sa __ _ _ _ _ _ _ _ _
  Sa __ _ Sa __ _ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ _ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ Sa __ _ _ _ _ _ _ _ _ _ Sa __ _ Sa __ _ _ Sa __ _ _ _ _ _ Sa __ _ _ _ _ _ _ _ Sa __ _ Sa __ _ _
}
sanctusFive = \lyricmode {
  Sa __ _ _ _ _ _ _ _ _ _ _ _
  Sa __ _ _ _ _ _ _ _
  Sa __ _ _
  Sa __ _ _ _ _ _ _ _ _ _ _
  Sa __ _ _
  Sa __ _
  Sa __ _ _ _
  Sa __ _
  Sa __ _ _ _ _ _ _ _ _ _ Sa __ _ _
  Sa __ _ _ _ _ _ _ _
  Sa __ _ _
  Sa __ _ _ _ _ _ _ _ _ _ _
  Sa __ _ Sa __ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ Sa __ _ _ _
  Sa __ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ _ _ Sa __ _ _ _ Sa __ _ _ _ _ _ _ _ _ _ _ Sa __ _ _ Sa __ _ _ _ _ _ _ _ Sa __ _ _ _ _ Sa __ _ Sa __ _ _ _ _ _ _ _ _ _ _ _
}

piecemarks = {
  \tempo "doux" 4=48
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup \italic "molto rubato"
  \time 4/4
  s1*32 \bar "|."
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
  \new Staff \new Voice = "voiceOne" << \voiceOne \piecemarks >>
  \new Lyrics \lyricsto "voiceOne" { \sanctusOne }
  \new Staff \new Voice = "voiceTwo" << \voiceTwo \piecemarks >>
  \new Lyrics \lyricsto "voiceTwo" { \sanctusTwo }
  \new Staff \new Voice = "voiceThree" << \voiceThree \piecemarks >>
  \new Lyrics \lyricsto "voiceThree" { \sanctusThree }
  \new Staff \new Voice = "voiceFour" << \voiceFour \piecemarks >>
  \new Lyrics \lyricsto "voiceFour" { \sanctusFour }
  \new Staff \new Voice = "voiceFive" << \voiceFive \piecemarks >>
  \new Lyrics \lyricsto "voiceFive" { \sanctusFive }
>>
\layout{
  \context {
    \Voice
    \override Hairpin.minimum-length = #10
    \override DynamicText.extra-spacing-width = #'(-0.3 . 0.3)
    \override TupletBracket.direction = #UP
    \remove "Key_engraver"
  }
  \context {
    \Staff
    \numericTimeSignature
    \consists "Key_engraver"
  }
}
}

