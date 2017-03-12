\version "2.18"
#(set-global-staff-size 15.15)
#(define (scoop-stencil grob)
  (ly:stencil-add
    (ly:note-head::print grob)
    (grob-interpret-markup grob
      (markup #:with-dimensions '(0 . 0) '(0 . 0)
              #:translate '(-0.2 . -0.5)
              #:path 0.25 '((moveto 0 0)
                            (curveto 0 -1 -1 -1.5 -1.5 -1.5))))))
scoop = \once \override NoteHead #'stencil = #scoop-stencil
\header {
  title = "obsession 1"
  subtitle = "on dominance"
  composer = "dJ m!k3$0L"
}
subP = \markup { \center-align
\normal-text { \italic { \italic sub } }
\dynamic p }

subPd = #(make-dynamic-script subP)
hairtip = \once \override Hairpin.circled-tip = ##t

subPP = \markup { \center-align
\normal-text { \italic { \italic sub } }
\dynamic pp }

subPPd = #(make-dynamic-script subPP)


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
  \repeat unfold 4 { \scoop cis''8.. r32  } |
  \times 2/3 { r4 \repeat unfold 2 { \scoop a'8.. r32 } } \scoop a'8.. r32 \repeat unfold 4 { a'16-. } |
  \repeat unfold 2 { \scoop cis''8.. r32  } |
  \times 2/3 { \repeat unfold 4 { \scoop a'8.. r32  } } |
  \repeat unfold 2 { \scoop fis'8..-- r32  } \repeat unfold 2 { fis'8-_  } \repeat unfold 4 fis'16-.
  \times 2/3 { r4 \repeat unfold 2 { \scoop fis'8.. r32 } } \times 2/3 { fis'4-_ fis'-_ fis'-_ }
  \repeat unfold 2 { \scoop fis'8..-- r32  } \repeat unfold 2 { fis'8-_  }
  \times 8/12 { \repeat unfold 6 { b'8-. [b'-.] }}
  \repeat unfold 2 { fis''8..-- r32  } \repeat unfold 2 { fis''8-_  } \repeat unfold 4 fis''16-. |
  \times 2/3 { r4 \repeat unfold 2 { \scoop e''8.. r32 } } \times 2/3 { \repeat unfold 3 e''4-_ } |
  \repeat unfold 2 { d''8..--^\espressivo r32  } \times 4/5 { fis'8-_ [ fis'-_ fis'-_ fis'-! ] }
  \times 2/3 { \repeat unfold 2 { cis''8. r16  } \repeat unfold 2 { c''8. r16  } r4 } |
  \repeat unfold 2 { d''4-_  } fis'8 fis' \times 2/3 { fis'-. fis'-. fis'-. } |
  cis''8.-_ cis''-. c''-_ c''-! |
  b'4 \scoop b'8.. r32 \times 2/3 { fis'4-. fis' fis'-. } |
  r8 bes'-. bes'-. bes' bes'-. r |
  \repeat unfold 12 { b'16-! } \repeat unfold 4 { b'16-. } |
  \repeat unfold 8 { b'16-. } \repeat unfold 4 { b'16 }  |
  \repeat unfold 4 { b'16 [ b'16 b'16 ] } |
  \repeat unfold 3 { b'16 [ b'16 b'16 ] } b'16 [ b'16 b'16 b'16 ] |
  fis'4-_ fis'-_ fis'8-. fis'-. \times 4/5 { \repeat unfold 5 { fis'-. } } |
  fis'8-. fis'-. \times 2/3 { fis'4-! fis'-! fis'-! } r |
  a'4 ~ a'16.. r64 a'8 \footnote "" #'(0 . 0) "* Le \"r\" de \"re\" devrait disparaître progressivement."
      gis'2 |
  \repeat unfold 4 { gis'16 } \times 4/5 { \repeat unfold 5 { gis'16 } } \times 4/6 { \repeat unfold 6 { gis'16 } } \times 4/7 { \repeat unfold 7 { gis'16 } } |
  \repeat unfold 8 { gis'32 } \times 4/7 { \repeat unfold 7 { gis'16 } } \times 4/6 { \repeat unfold 6 { gis'16 } } \times 4/5 { \repeat unfold 5 { gis'16 } }
  \repeat unfold 3 { gis'16 } r16 r4 |
  a'2 gis'4... r32 |
  \times 2/3 { \repeat unfold 3 { \scoop ais'8.. r32 } } \repeat unfold 4 { \scoop ais'32. r64 } r4 |
  b'4-_ b'4-_ b'32 r16. b'8 b'16-. b'16-. b'16-. b'16-. |
  \times 2/3 { b'4-! \scoop b'8.. r32 \scoop b'8.. r32 } \times 2/3 { b'4-_ bes'4 ( a'4 ) } |
  b'4 b'8 |
  \times 2/3 { dis''4-_ dis''4-_ dis''4-_ } \times 2/3 { dis''4-_ dis''4-_ } |
  \times 8/9 { \repeat unfold 8 cisis''8-_ } |
  R2 |
  \times 4/6 { \repeat unfold 3 { \scoop fis''8.. r32 } \repeat unfold 3 { \scoop fis''8.. r32 }} |
  \scoop fis''16.. r64 fis''8-_ \repeat unfold 5 fis''8-_ fisis''8-_ |
  fisis''8-_ fisis''8-_ fisis''8-_ fisis''8-_ fisis''2^\mordent |
  r8 ais''4. ais''4.. r16 |
  a'1 |
  gis' |
  R1*11/16 |
  R1*10/16 |
  R1*11/16 |
  R1*9/16 |
  R1*7/6 |
  R1*13/16 |
  R1*11/16
  R1*7/8 |
  R2 |
  R1*5/16 |
  R1*9/16 |
  R1*10/16 |
  R1*9/16 |
  R1*6/16 |
  R1*13/16 |
  R1*9/16 |
  R1*10/16 |
  R1*7/16 |
  << { gis''2.. r8 } { s2^\p^\< s4.^\> s8\parend^\p } >> |
}
voiceTwo = {
  %\clef soprano
  \key d \major
  \repeat unfold 4 { \scoop a'8.. r32  } |
  \times 2/3 { r4 \repeat unfold 2 { \scoop f'8.. r32 } } \scoop f'8.. r32 \repeat unfold 4 { f'16-. } |
  \repeat unfold 2 { \scoop a'8.. r32  } |
  \times 2/3 { \repeat unfold 4 { \scoop f'8.. r32  } } |
  \repeat unfold 2 { \scoop d'8..-- r32  } \repeat unfold 2 { d'8-_  } \repeat unfold 4 d'16-. |
  \times 2/3 { r4 \repeat unfold 2 { \scoop d'8.. r32 } } \times 2/3 { d'4-_ d'-_ d'-_ }
  \repeat unfold 2 { \scoop d'8..-- r32  } \repeat unfold 2 { d'8-_  }
  \times 8/12 { \repeat unfold 6 { fis'8-. [fis'-.] }}
  \repeat unfold 2 { d''8..-- r32  } \repeat unfold 2 { d''8-_  } \repeat unfold 4 d''16-. |
  \times 2/3 { r4 \repeat unfold 2 { \scoop cis''8.. r32 } } \times 2/3 { \repeat unfold 3 c''4-_ } |
  \repeat unfold 2 { bes'8..--^\espressivo r32  } \times 4/5 { d'8-_ [ d'-_ d'-_ d'-! ] }
  \times 2/3 { \repeat unfold 2 { a'8. r16  } \repeat unfold 2 { a'8. r16  } r4 } |
  \repeat unfold 2 { b'4-_  } d'8 d' \times 2/3 { d'-. d'-. d'-. } |
  ais'8.-_ ais'-. a'-_ a'-! |
  gis'4 \scoop gis'8.. r32 \times 2/3 { d'4-. d' d'-. } |
  r8 g'-. g'-. fis' fis'-. r |
  \repeat unfold 12 { fis'16-! } \repeat unfold 4 { fis'16-. } |
  \repeat unfold 8 { fis'16-. } \repeat unfold 4 { fis'16 }  |
  \repeat unfold 4 { fis'16 [ fis'16 fis'16 ] } |
  \repeat unfold 3 { fis'16 [ fis'16 fis'16 ] } fis'16 [ fis'16 fis'16 fis'16 ] |
  d'4-_ d'-_ d'8-. d'-. \times 4/5 { \repeat unfold 5 { d'-. } } |
  d'8-. d'-. \times 2/3 { d'4-! d'-! d'-! } r |
  fis'4 ~ fis'16.. r64 fis'8 eis'2 |
  \repeat unfold 4 { eis'16 } \repeat unfold 4 { eis'16 } \times 4/5 { \repeat unfold 5 { eis'16 } } \times 4/6 { \repeat unfold 6 { eis'16 } } |
  \times 4/7 { \repeat unfold 7 { eis'16 } } \repeat unfold 8 { eis'32 } \times 4/7 { \repeat unfold 7 { eis'16 } } \times 4/6 { \repeat unfold 6 { eis'16 } } |
  \times 4/5 { \repeat unfold 4 { eis'16 } r } r4 |
  fis'2 eis'4... r32 |
  \times 2/3 { \repeat unfold 3 { \scoop gis'8.. r32 } } \repeat unfold 4 { \scoop fisis'32. r64 } r4 |
  ais'4-_ ais'4-_ ais'32 r16. ais'8 ais'16-. ais'16-. ais'16-. ais'16-. |
  \times 2/3 { ais'4-! \scoop ais'8.. r32 \scoop ais'8.. r32 } \times 2/3 { ais'4-_ a'4 ( gis'4 ) } |
  ais'4 ais'8
  \times 2/3 { b'4-_ b'-_ b'-_ } \times 2/3 { b'4-_ b'-_ }
  \times 8/9 { \repeat unfold 8 ais'8-_ } |
  b'4^\mordent \scoop b'16.. r64 \scoop b'16.. r64 |
  \times 4/7 { \repeat unfold 7 { \scoop b'8.. r32 } } |
  \times 8/10 { \repeat unfold 10 b'8-. } |
  \times 4/5 { ais'4-_ ais'-_ ais'-_ ais'-_ ais'-_ } |
  d''2^\mordent \times 2/3 { \repeat unfold 3 { \scoop d''8.. r32 }} |
  \repeat unfold 4 { \scoop fis'8.. r32 } |
  \times 4/6 { \repeat unfold 6 eis'4-_ } |
  fis'8. [ fis'16 fis' ] fis' [ fis' ] fis' [ fis' ] r8
  fis'8. [ fis'16 fis' ] fis' [ fis' ] fis' [ fis' ] r16 |
  fis'8. [ fis'16 fis' ] fis' [ fis' fis' ] fis' [ fis' ] r16 |
  fis'8 [ fis'16 ] fis' [ fis' fis'] fis' [ fis' fis' ] |
  \times 2/3 { e'4 fis' gis' ais' } gis'8 fis' e' r |
  fis'8 [ fis'16 fis' fis' ] fis' [ fis' fis' ] \scoop fis' [ fis' ] fis' [ fis' ] r |
  fis'8 [ fis'16 fis' ] fis' [ fis' ] ais' [ ais']  gis' [ gis' ] fisis'16 |
  \times 2/3 { dis'8 [ dis' gis' ] } \times 2/3 { ais' [ b' ais' ] } gis'8 [ gis'16 ] gis' [ gis' gis' ]
  \repeat unfold 3 { \scoop a'16.. r64 } r8 |
  gis'16 gis' gis' gis' gis' |
  fis'8. [ fis'16 fis' ] fis' [ fis' fis' ] r |
  fis'8 fis'16 ais' ais' gis' fisis' fisis' fisis' fisis' |
  gis' gis' gis' \repeat unfold 3 { \scoop a'16.. r64 }  |
  gis'16 gis' gis' gis' fis' fis' |
  gis'16. [ gis'32. ] r a'16. [ a'32. ] r32. b'16 [ b'16 b' ] \times 2/3 { a'8 [ gis' fis' ] } |
  fis'8 [ fis'16 fis' fis' ] fis' [ fis' fis' ] r |
  fis'8 [ fis'16 fis' ] fis' [ fis' ] fis' [ fis' fis' ] r |
  fis'8 cis''16 cis'' cis'' cis'' cis'' |
  \times 2/3 { b'8 cis'' dis'' } \times 2/3 { e'' dis'' cis'' } \times 4/7 { b' a' gis' fis' gis' fis' r } |
  fis'8 fis'16 fis' fis' fis' fis' fis' fis' |
  \times 2/3 { \repeat unfold 3 { \scoop b'8.. r32 } } \repeat unfold 2 { \scoop b'16.. r64 } |
  fis'8 fis'16 fis' fis' fis' fis' r |
  fis'8 fis'16 fis' fis' fis' fis' \times 2/3 { a'8-_^"cis b d fis a" gis'-_ gis'-_ }  gis'16 fis' r |
  \repeat unfold 5 fis'16-_ |
  \times 2/3 { e'16 fis' gis' } \times 2/3 { ais'16 gis' gis' } \times 2/3 { fis' e' fis' } \times 2/3 { gis' r } |
  fis'8 fis'16 fis' fis' fis' fis' r |
  fis'8 [ fis'16 ] g' [ g' g' ] d' [ d' ] d' [ d' e' ] fis' [ fis' fis' ] \repeat unfold 2 { cis'16.. r64  } |
  fis'8^"intimate again" fis'16 fis' fis' fis' fis' fis' r |
  fis'8 fis'16 fis' fis' fis' r |
  fis'8 fis'16 fis' fis' fis' fis' fis' fis' fis' fis' |
  cis''16..^"first theme" r64 \repeat unfold 3 { cis''16.. r64 }|
  \times 4/5 { \repeat unfold 5 { a'16.. r64 } } |
  fis'8 fis'16 fis' fis' fis' fis' fis' |
  \times 2/3 { g'8-_ g'-_ g'-_ } \times 2/3 { d'8-_ d'-_ d'-_ } \times 2/3 { e'-_ fis'-_ cis'-_ } |
  fis'8 fis'16 fis' fis' fis' fis' fis' fis' r |
  fis'8 fis'16 fis' |
  \times 2/3 { cis''4 cis'' cis'' cis'' } fis'16 fis' fis' fis' |
  \times 2/3 { fisis'8 dis' gis' } \times 2/3 { ais' b' ais' } |
  gis'16 gis' gis' gis' gis' cis' cis' |
  \times 2/3 { a'8 a' a' } \times 2/3 { a' e' fis' } gis'8 gis' dis' |
  fis'8 fis'16 fis' |
  \times 4/5 { cis''8 cis'' b' cis'' dis'' } \times 4/5 { e'' dis'' cis'' b' a' }
  gis'8 [ fis' ] \repeat unfold 3 { b'16.. r64 } |
  fis'16 fis' fis' fis' |
  \times 2/3 { b'8 cis'' dis'' } \times 2/3 { e'' dis'' cis'' } \times 2/3 { b' a' gis' } \times 2/3 { a' fis' } |
  g'8 g' d' d' fis'16 fis' fis' fis' |
  \times 2/3 { b'8 cis'' dis'' } \times 2/3 { e'' dis'' cis'' } \repeat unfold 3 { b'16.. r64 } |
  fis'16 fis' fis' |
  \times 2/3 { b'8 cis'' dis'' } \times 2/3 { e'' dis'' cis'' } \times 2/3 { b' a' } |
  \repeat unfold 4 { \scoop a'8.. r32  } |  
  \repeat unfold 4 { \scoop a'8.. r32  } |
  \times 4/6 { \repeat unfold 6 { \scoop fis'8.. r32  } } |
  \times 4/6 { \repeat unfold 6 { \scoop f'8.. r32  } } |
  \repeat unfold 4 { \scoop a'8.. r32  } |  
  \times 4/6 { \repeat unfold 4 { \scoop f'8.. r32  } } |
  d'4-_ d'-_ d'8-_ d'8-_ d'16-. d'-. d'-. d'-. |
  \times 2/3 { r4 d'8.. r32 d'8.. r32 } \times 2/3 { d'8.. r32 d'8.. r32 } |
  d'4-_ d'-_ \times 2/3 { d'8.. r32 d'8.. r32 d'8.. r32 } |
  \times 2/3 { d'8.. r32 d'8.. r32 d'8.. r32 } \repeat unfold 4 { d'16.. r64 } |
  \once \override Score.RehearsalMark.break-visibility = ##(#t #t #f)
  \mark \markup \fermata
  cis''4-_ cis''-_ c''8-_ c''8-_ c''16-. c''-. c''-. c''-. |
  \times 2/3 { r4 b'8.. r32 b'8.. r32 } \times 2/3 { c''8.. r32 c''8.. r32 c''8.. r32 } |
  cis''4 r4 r2 |
}
voiceThree = {
  %\clef alto
  \key d \major
  \scoop fis'8.. r32  \scoop fis'8.. r32  \scoop fis'8.. r32  \scoop fis'8.. r32 |
  \times 2/3 { r4 \repeat unfold 2 { \scoop d'8.. r32 } } \scoop d'8.. r32 d'16-. d'16-. d'16-. d'16-. |
  \repeat unfold 2 { \scoop fis'8.. r32  } |
  \times 2/3 { \repeat unfold 4 { \scoop d'8.. r32  } } |
  \repeat unfold 2 { \scoop bes8..-- r32  } \repeat unfold 2 { b8-_  } \repeat unfold 4 b16-. |
  \times 2/3 { r4 \repeat unfold 2 { \scoop cis'8.. r32 } } \times 2/3 { c'4-_ c'-_ c'-_ }
  \repeat unfold 2 { \scoop bes8..-- r32  } \repeat unfold 2 { b8-_  }
  \times 8/12 { \repeat unfold 6 { e'8-. [e'-.] }}
  \repeat unfold 2 { b'8..-- r32  } \repeat unfold 2 { bes'8-_  } \repeat unfold 4 bes'16-. |
  \times 2/3 { r4 \repeat unfold 2 { \scoop a'8.. r32 } } \times 2/3 { \repeat unfold 3 a'4-_ } |
  \repeat unfold 2 { g'8..--^\espressivo r32  } \times 4/5 { bes8-_ [ bes-_ bes-_ bes-! ] }
  \times 2/3 { \repeat unfold 2 { fis'8. r16  } \repeat unfold 2 { fis'8. r16  } r4 } |
  \repeat unfold 2 { fis'4-_  } bes8 bes \times 2/3 { bes-. bes-. bes-. } |
  gis'8.-_ gis'-. g'-_ g'-! |
  d'4 d'8.. r32 \times 2/3 { bes'4-. bes' bes'-. } |
  r8 e'-. e'-. ees' ees'-. r |
  \repeat unfold 12 { e'16-! } \repeat unfold 4 { e'16-. } |
  \repeat unfold 8 { e'16-. } \repeat unfold 4 { e'16 }  |
  \repeat unfold 4 { e'16 [ e'16 e'16 ] } |
  \repeat unfold 3 { e'16 [ e'16 e'16 ] } e'16 [ e'16 e'16 e'16 ] |
  bes4-_ bes-_ b8-. b-. \times 4/5 { \repeat unfold 5 { b-. } } |
  cis'8-. cis'-. \times 2/3 { c'4-! c'-! c'-! } r |
  d'4 ~ d'16.. r64 d'8 d'2 |
  \repeat unfold 4 { d'16 } \repeat unfold 4 { d'16 } \repeat unfold 4 { d'16 } \times 4/5 { \repeat unfold 5 { d'16 } } |
  \times 4/6 { \repeat unfold 6 { d'16 } } \times 4/5 { \repeat unfold 5 { d'16 } } \repeat unfold 4 { d'16 } \times 2/3 { \repeat unfold 3 { d'8 } } |
  \times 2/3 { \repeat unfold 2 { d'8 } r } r4 |
  d'2 d'4... r32 |
  \times 2/3 { \repeat unfold 3 { \scoop dis'8.. r32 } } \repeat unfold 4 { \scoop disis'32. r64 } r4 |
  gis'4-_ gis'4-_ gis'32 r16. gis'8 gis'16-. gis'16-. gis'16-. gis'16-. |
  \times 2/3 { gis'4-! \scoop gis'8.. r32 \scoop gis'8.. r32 } \times 2/3 { gis'4-_ g'4 ( fis'4 ) } |
  fis'4 fis'8 |
  \times 2/3 { \repeat unfold 3 gis'4-_ } \times 2/3 { gis'4-_ gis'-_ } |
  \times 8/9 { \repeat unfold 8 gisis'8-_ }
  R2 |
  dis'2^\mordent \repeat unfold 3 dis'8-_ e'8-_ |
  \times 4/7 { \repeat unfold 7 e'4-_ } |
  \times 4/7 { \repeat unfold 7 e'4-_ } |
  \times 4/5 { e'4-_ \repeat unfold 4 { \scoop b'8.. r32 } } |
  \times 4/7 { \repeat unfold 7 { \scoop d'8..-_ r32 }} |
  \times 4/7 { \repeat unfold 7 { \scoop d'8..-_ r32 }} |
  \clef "treble_8"
  dis'8. [ dis'16 dis' ] dis' [ dis' ] d' [ d' ] r8
  cis'8. [ cis'16 e' ] e' [ e' ] e' [ e' ] r16 |
  dis'8. [ dis'16 dis' ] d' [ d' d' ] d' [ d' ] r16 |
  cis'8 [ cis'16 ] cis' [ cis' cis'] e' [ e' e' ] |
  \times 2/3 { e'4 e' fis' gis' } fis'8 e' cis' r |
  dis'8 [ dis'16 dis' dis' ] dis' [ dis' dis' ] \scoop dis' [ dis' ] d' [ d' ] r |
  cis'8 [ cis'16 cis' ] cis' [ cis' ] fis' [ fis']  e' [ e' ] dis'16 |
  \times 2/3 { dis'8 [ dis' gis' ] } \times 2/3 { ais' [ b' ais' ] } gis'8 [ gis'16 ] dis' [ dis' dis' ]
  \repeat unfold 3 { \scoop d'16.. r64 } r8 |
  R1*5/16 |
  dis'8. [ dis'16 dis' ] d' [ d' d' ] r |
  e'8 e'16 r8 r8 r8. | %e'16 e'16 e'16 dis'16 dis' dis' dis' |
  dis'16 dis' dis' \repeat unfold 3 { \scoop d'16.. r64 } |
  R4. |
  gis16. gis32. r r8. r r4 |
  dis'8 [ dis'16 dis' dis' ] b [ b b ] r |
  e'8 [ e'16 e' ] e' [ e' ] e' [ cis' cis' ] r |
  cis'8 gis'8 gis'8. |
  cis'4 fis' fis'2 ~ |
  fis'8. r4. |
}
voiceFour = {
  %\clef tenor
  \clef "treble_8"
  \key d \major
  \scoop d'8.. r32 \scoop d'8.. r32  \scoop d'8.. r32  \scoop d'8.. r32 |
  \times 2/3 { r4 \repeat unfold 2 { \scoop bes8.. r32 }  } \scoop bes8.. r32 bes16-. bes16-. bes16-. bes16-. |
  \repeat unfold 2 { \scoop d'8.. r32  } |
  \times 2/3 { \repeat unfold 4 { \scoop bes8.. r32  } } |
  \repeat unfold 2 { \scoop g8..-- r32  } \repeat unfold 2 { g8-_  } \repeat unfold 4 g16-. |
  \times 2/3 { r4 \repeat unfold 2 { \scoop g8.. r32 } } \times 2/3 { g4-_ g-_ g-_ }
  \repeat unfold 2 { \scoop g8..-- r32  } \repeat unfold 2 { g8-_  }
  \times 8/12 { \repeat unfold 6 { c'8-. [c'-.] }}
  \repeat unfold 2 { g'8..-- r32  } \repeat unfold 2 { g'8-_  } \repeat unfold 4 g'16-. |
  \times 2/3 { r4 \repeat unfold 2 { \scoop fis'8.. r32 } } \times 2/3 { \repeat unfold 3 fis'4-_ } |
  \repeat unfold 2 { e'8..--^\espressivo r32  } \times 4/5 { g8-_ [ g-_ g-_ g-! ] }
  \times 2/3 { \repeat unfold 2 { e'8. r16  } \repeat unfold 2 { ees'8. r16  } r4 } |
  \repeat unfold 2 { e'4-_  } a8 a \times 2/3 { a-. a-. a-. } |
  e'8.-_ e'-. ees'-_ ees'-! |
  cis'4 \scoop cis'8.. r32 \times 2/3 { g4-. g g-. } |
  r8 cis'-. cis'-. c'-. c'-. r |
  \repeat unfold 12 { d'16-! } \repeat unfold 4 { d'16-. } |
  \repeat unfold 8 { d'16-. } \repeat unfold 4 { d'16 }  |
  \repeat unfold 4 { cis'16 [ cis'16 cis'16 ] } |
  \repeat unfold 3 { cis'16 [ cis'16 cis'16 ] } cis'16 [ cis'16 cis'16 cis'16 ] |
  g4-_ g-_ g8-. g-. \times 4/5 { \repeat unfold 5 { g-. } } |
  g8-. g-. \times 2/3 { g4-! g-! g-! } r |
  b4 ~ b16.. r64 b8 b2 |
  \repeat unfold 8 { b16-- \repeat unfold 3 { b16 } }
  b16-- \repeat unfold 2 { b16 } r16 r4 |
  b2 b4... r32 |
  \times 2/3 { \repeat unfold 3 { \scoop cis'8.. r32 } } \repeat unfold 4 { \scoop cisis'32. r64 } r4 |
  fis'4-_ fis'4-_ fis'32 r16. fis'8 fis'16-. fis'16-. fis'16-. fis'16-. |
  \times 2/3 { fis'4-! \scoop fis'8.. r32 \scoop fis'8.. r32 } \times 2/3 { fis'4-_ f'4 ( e'4 ) } |
  dis'4 dis'8 |
  \times 2/3 { ais4-_ ais-_ ais-_ } \times 2/3 { ais-_ ais-_ } |
  \times 8/9 { \repeat unfold 8 eisis'8-_ } |
  R2 |
  \times 2/3 { r1 \scoop ais4.. r16 } |
  \repeat unfold 2 { \scoop ais4.. r16 } |
  \times 8/9 { r8 \repeat unfold 6 b-_  dis'-_ dis'-_ } |
  \repeat unfold 4 { dis'8.. r32 } |
  \times 2/3 { \repeat unfold 3 { \scoop b4.. r16 } } |
  \repeat unfold 4 { \scoop b8.. r32 } |
  R1*11/16 |
  R1*10/16 |
  R1*11/16 |
  R1*9/16 |
  R1*7/6 |
  b8 [ b16 b16 b16 ] b [ b b ] \scoop b [ b ] b [ b ] r |
  ais8 [ ais16 ais ] ais [ ais ] cis' [ cis' ] b [ b ] ais |
  \times 2/3 { ais8 ais dis' } \times 2/3 { dis' dis' cis' } b8 [ b16 ] b [ b b ] |
  \repeat unfold 3 { \scoop a16.. r64 } r8 |
  R1*5/16 |
  R1*9/16 |
  R1*10/16 |
  R1*9/16 |
  R1*6/16 |
  R1*13/16 |
  R1*9/16 |
  R1*10/16 |
  r4 ais8. ~ |
  ais4. ais8 ~ ais2 |
  b8 b16 b b cis' cis' cis' cis' |
  \times 2/3 { \repeat unfold 3 { \scoop b8.. r32 } } \repeat unfold 2 { \scoop b16.. r64 } |
}

voiceFive = {
  \clef bass
  \key d \major
  \scoop bes8.. r32  \scoop bes8.. r32  \scoop bes8.. r32  \scoop bes8.. r32  |
  \times 2/3 { r4 \repeat unfold 2 { \scoop g8.. r32 }  } \scoop g8.. r32 g16-. g16-. g16-. g16-. |
  \repeat unfold 2 { \scoop bes8.. r32  } |
  \times 2/3 { \repeat unfold 4 { \scoop g8.. r32  } } |
  \repeat unfold 2 { \scoop a,8..-- r32  } \repeat unfold 2 { a,8-_  } \repeat unfold 4 a,16-. |
  \times 2/3 { r4 \repeat unfold 2 { \scoop a,8.. r32 } } \times 2/3 { a,4-_ a,-_ a,-_ }
  \repeat unfold 2 { \scoop a,8..-- r32  } \repeat unfold 2 { a,8-_  } |
  \times 8/12 { \repeat unfold 6 { d8-. [d-.] }} |
  R1 |
  R1 |
  \repeat unfold 2 { a,8..--^\espressivo r32  } \times 4/5 { a,8-_ [ a,-_ a,-_ a,-! ] } |
  \times 2/3 { \repeat unfold 2 { d8. r16  } \repeat unfold 2 { d8. r16  } r4 } |
  \repeat unfold 2 { g,4-_  } g,8 g, \times 2/3 { g,-. g,-. g,-. } |
  fis,8.-_ fis,-. f,-_ f,-! |
  e,4 \scoop e,8.. r32 \times 2/3 { a,4-. a, a,-. } |
  r8 d-. d-. d-. d-. r |
  \repeat unfold 12 { g,16-! } \repeat unfold 4 { g,16-. } |
  \repeat unfold 8 { g,16-. } \repeat unfold 4 { g,16 }  |
  \repeat unfold 4 { g,16 [ g,16 g,16 ] } |
  \repeat unfold 3 { g,16 [ g,16 g,16 ] } g,16 [ g,16 g,16 g,16 ] |
  a,4-_ a,-_ a,8-. a,-. \times 4/5 { \repeat unfold 5 { a,-. } } |
  a,8-. a,-. \times 2/3 { a,4-! a,-! a,-! } r |
  cis4 ~ cis16.. r64 cis8 cis2 |
  fis4 ~ \times 2/3 { fis8-_ fis-_ fis-_ } \times 2/3 { fis-_ fis-_ fis-_ } \times 2/3 { fis-_ fis-_ fis-_ } |
  fis8-_ fis-_ fis-_ fis-_ \times 2/3 { fis4-_ fis-_ fis-_ } |
  fis-_ r |
  cis2 cis4... r32 |
  R1 |
  dis'4-_ dis'4-_ dis'32 r16. dis'8 dis'16-. dis'16-. dis'16-. dis'16-. |
  \times 2/3 { dis'4-! \scoop dis'8.. r32 \scoop dis'8.. r32 } \times 2/3 { dis'4-_ d'4 ( cis'4 ) } |
  gis4 gis8 |
  \times 2/3 { fisis4-_ fisis-_ fisis-_ } \times 2/3 { fisis-_ fisis-_ } |
  \times 8/9 { \repeat unfold 8 { fisis8-_ } } |
  R2 |
  \repeat unfold 4 { \scoop gis,8.. r32 } |
  \times 4/5 { \repeat unfold 5 { \scoop gis,8.. r32 } } |
  gis,2^\mordent \times 2/3 { \repeat unfold 3 { gis,8.. r32 }} |
  \times 8/9 { \repeat unfold 9 gis,8-. } |
  \times 8/9 { gis,8-. \repeat unfold 8 cis8-. } |
  \times 8/9 { \repeat unfold 9 cis8-. } |
  R1*11/16 |
  R1*10/16 |
  R1*11/16 |
  R1*9/16 |
  R1*7/6 |
  R1*13/16 |
  R1*11/16
  R1*7/8 |
  R2 |
  R1*5/16 |
  R1*9/16 |
  R1*10/16 |
  R1*9/16 |
  R1*6/16 |
  R1*13/16 |
  b,8 b,16 b, b, d d d r |
  cis8 [ cis16 cis ] cis [ cis ] e [ e e ] r |
  fis8 fis,8 ~ fis,8. ~ |
  fis,2.. r8 |
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
hcrfp =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s4...^\fp^\< s32\parend^\f }
#})
semicr =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s32.^\p^\< s64\parend^\f }
#})
halfcr =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s16..^\p^\< s64\parend^\f }
#})
semimfcr =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s32.^\mf^\< s64\parend^\f }
#})

qquincr =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..*4/5^\p^\< s32*4/5\parend^\f }
#})

qquincrff =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..*4/5^\mf^\< s32*4/5\parend^\ff }
#})

qtripcr =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..*2/3^\p^\< s32*2/3\parend^\f }
#})
qseptcr =
#(define-music-function
     (parser location arg1)
     (number?)
   #{
\repeat unfold $arg1 { s8..*4/7^\p^\< s32*4/7\parend^\f }
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
  s2.^\< |
  s8.*3 s4^\f  |
  s1*5/4^\p^\< |
  s2.^\!^\> s4\parend^\p |
}

dynMOne = {
  s1^\pp
  s4 s2.^\< |
  s1^\f^\>
  s2^\pp |
  s2^\p^\< \hcrfp 1
  \qtripcrppmp 3 \semimfcr 4
}

dynMTwo = {
  s1^\pp
  s2 s2^\< |
  s4 s2.^\f^\>
  s2^\p |
  s2^\p^\< \hcrfp 1
  \qtripcrppmp 3 \semimfcr 4
}

dynMThree = {
  s1^\pp
  s2^\< s2^\f^\>|
  s1
  s2^\pp |
  s2^\p^\< \hcrfp 1
  \qtripcrppmp 3 \semimfcr 4
}

dynMFour = {
  s1^\pp
  s1^\<
  s1^\mp^\>
  s2^\pp |
  s2^\p^\< \hcrfp 1
  \qtripcrppmp 3 \semimfcr 4
}

dynMFive = {
  s1^\pp
  s2. s4^\< |
  s2 s2^\mf^\>
  s2^\pp |
  s2^\p^\< \hcrfp 1
  s2.
}
dynMis = {
  s4 |
  s2^\mp s8 s4.^\< |
  s4*2/3^\f \qtripcr 2 s4*2/3^\f s4*2/3^\subPPd s4*2/3 |
  s4.^\mp |
  s1*5/6^\f |
  s1*8/9^\p |
}

dynMisEndA = {
  s2 |
  \qtripcr 6 |
  s16..^\p^\< s64\parend^\f s4.^\mf s4. s8^\f |
  s1 |
  s8 s4.^\p^\< s4.. s16\parend^\f
  s1^\> |
  s2 s4.. s16^\p |
}

dynMisEndB = {
  s4^\f \halfcr 2
  \repeat unfold 7 { s8..*4/7^\p^\< s32*4/7\parend^\f } |
  s1^\mp |
  s1^\mf |
  s2^\f \qtripcr 3 |
  \qcr 4 |
  s2^\> s4.. s16^\p |
}

dynMisEndC = {
  s2 |
  s2^\mf s2^\mp
  s1^\> |
  s1^\< |
  s4*4/5^\f \repeat unfold 4 { s8..*4/5^\p^\< s32*4/5\parend^\f } |
  \repeat unfold 7 { s8..*4/7^\p^\< s32*4/7\parend^\f } |
  \repeat unfold 4 { s8..*4/7^\p^\< s32*4/7\parend^\mp } \repeat unfold 3 { s8..*4/7^\pp^\< s32*4/7\parend^\p } |
}

dynMisEndD = {
  s2 |
  s1*2/3 s4..*2/3^\p^\< s16*2/3\parend^\f |
  \repeat unfold 2 { s4..^\p^\< s16\parend^\f } |
  s8*8/9 s8*8/9^\f^\> \repeat unfold 5 s8*8/9 s4*8/9^\p |
  \qcr 4 |
  \repeat unfold 3 { s4..*2/3^\p^\< s16*2/3\parend^\f } |
  \repeat unfold 2 { s8..^\p^\< s32\parend^\mp } \repeat unfold 2 { s8..^\pp^\< s32\parend^\p } |
}

dynMisEndE = {
  s2 |
  \qcr 2 \qcrmp 2 |
  \qquincrff 5 |
  s2^\f \qtripcr 3 |
  s1^\mf^\< |
  s1^\f^\> |
  s2 s4.. s16^\p |
}

dynCredoB = {
  s1*11/16^\p |
}

agnusOne = \lyricmode {
  A A A A
  gnu gnu gnu n n n n
  A A
  gnu gnu gnu gnu
  Dei ei Dei ei Dei ei ei ei
  Dei ei Dei ei ei
  \repeat unfold 4 A
  \repeat unfold 12 De
}
agnusTwo = \lyricmode {
  A A gnu u   n n n n
  De e De e i
}

agnusThree = \lyricmode {
  A A gnu nu nu nu
  \repeat unfold 4 Dei
  A A gnu gnu u u us
  De e e e
  Qui i to o li
  s~Pe e ca a
  \repeat unfold 28 { ta }
  \repeat unfold 21 { ta } ca ta ta ta
  A A gnu nu u u u u u
  s~De e ei ei i
}

miserereOne = \lyricmode {
  Mi i -- se -- re
  \repeat unfold 3 { re } \repeat unfold 5 { e } \repeat unfold 6 { e } \repeat unfold 7 { e }
  \repeat unfold 8 { e } \repeat unfold 7 { e } \repeat unfold 6 { e } \repeat unfold 5 { e }
  \repeat unfold 3 { e }
  Mi -- se
  re e e no no no no
}

miserereTwo = \lyricmode {
  Mi i -- se -- re
  \repeat unfold 3 { re } \repeat unfold 4 { e } \repeat unfold 5 { e } \repeat unfold 6 { e }
  \repeat unfold 7 { e } \repeat unfold 8 { e } \repeat unfold 7 { e } \repeat unfold 6 { e }
  \repeat unfold 4 { e }
  Mi -- se
  re e e no no no no
}

miserereThree = \lyricmode {
  Mi i -- se -- re
  \repeat unfold 3 { re } \repeat unfold 4 { e } \repeat unfold 4 { e } \repeat unfold 5 { e }
  \repeat unfold 6 { e } \repeat unfold 5 { e } \repeat unfold 4 { e } \repeat unfold 3 { e }
  \repeat unfold 2 { e }
  Mi -- se
  re e e no no no no
}

miserereFour = \lyricmode {
  Mi i -- se -- re
  \repeat unfold 3 { re } \repeat unfold 7 { \repeat unfold 4 { e } }
  \repeat unfold 3 { e }
  Mi -- se
  re e e no no no no
}

miserereFive = \lyricmode {
  Mi i -- se -- re
  \repeat unfold 2 { e } \repeat unfold 2 { \repeat unfold 3 { e } }
  \repeat unfold 4 { e } \repeat unfold 3 { e }
  e
  Mi -- se
}

miseryAll = \lyricmode {
  mi se
  re se re n n n
  se re re
  no o
  Mi se re re re re re
  \repeat unfold 8 no
}

miseryEndA = \lyricmode {
  re re re re re re
  re no no no no no no no
  no no no no no mi se
  mi se
}

miseryEndB = \lyricmode {
  mi se se
  mi se re re re re re
  mi mi mi mi mi mi mi mi mi mi
  re re re re re
  no no no no
  mi mi mi mi
  se se se se se se
}

miseryEndC = \lyricmode {
  mi se se se se re re re re re re re
  no no no no no no no
  no no no no no
  \repeat unfold 7 mi |
  \repeat unfold 7 se |
}

miseryEndD = \lyricmode {
  qui qui qui
  to to to to to to no no
  no no no no
  mi mi mi
  se se se se
}

miseryEndE = \lyricmode {
  mi se re re
  no no no no no
  no no no no
  \repeat unfold 9 re
  re \repeat unfold 8 mi
  \repeat unfold 9 se
}

credo = \lyricmode {
Cre -- do in u -- num De -- um, Pat -- rem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um, et in -- vi -- si -- bi -- li -- um.
}
credoTwo = \lyricmode {
Et in u -- num Do -- mi -- num Ie -- sum Chris -- tum, Fi -- li -- um De -- i u -- ni -- ge -- ni -- tum. Et ex Pa -- tre na -- tum an -- te om -- ni -- a sæ -- cu -- la.
}
credoThree = \lyricmode { De -- um de De -- o, }
credoFour = \lyricmode { lu -- men de lu -- mi -- ne, De -- um }
credoFourBis = \lyricmode { ve -- rum de De -- o ve -- ro. }
credoFourTer = \lyricmode { Ge -- ni -- tum, non fac -- tum, }
credoFive = \lyricmode { con -- sub -- stan -- ti -- a -- lem }
credoSix = \lyricmode { Pat -- "ri :" }
credoSeven = \lyricmode { per quem om -- ni -- a fac -- ta sunt. }
credoEight = \lyricmode { Qui prop -- ter nos ho -- mi -- nes, et prop -- ter nos -- tram sa -- lu -- tem des -- cen -- dit de cæ -- lis. Et in -- car -- na -- tus est de Spi -- ri -- tu Sanc -- to ex Ma -- ri -- a Vir -- gi -- "ne :" et ho -- mo fac -- tus est. Cru -- ci -- fi -- xus e -- tiam pro no -- "bis :" sub Pon -- tio Pi -- la -- to pas -- sus, et se -- pul -- tus est. Et re -- sur -- re -- xit ter -- ti -- a di -- e, se -- cun -- dum Scrip -- tu -- ras. Et as -- cen -- dit in cæ -- "lum :" se -- det ad dex -- te -- ram Pa -- tris. Et i -- te -- rum ven -- tu -- rus est cum glo -- ri -- a iu -- di -- ca -- re vi -- vos, et mor -- tu -- "os :" cui -- us reg -- ni non e -- rit fi -- nis.
Et in Spi -- ri -- tum San -- ctum, Do -- mi -- num, et vi -- vi -- fi -- can -- "tem :" qui ex Pa -- tre, Fi -- li -- o -- que pro -- ce -- dit. Qui cum Pa -- tre, et Fi -- li -- o si -- mul a -- do -- ra -- tur, et con -- glo -- ri -- fi -- ca -- "tur :" qui lo -- cu -- tus est per Pro -- phe -- tas.
Et u -- nam, sanc -- tam, ca -- tho -- li -- cam et a -- pos -- to -- li -- cam Ec -- cle -- siam. Con -- fi -- te -- or u -- num bap -- tis -- ma in re -- mis -- si -- o -- nem pec -- ca -- to -- rum. Et ex -- pec -- to res -- ur -- rec -- tio -- nem mor -- tu -- o -- rum. Et vi -- tam ven -- tu -- ri sæ -- cu -- li. A -- men.
}

agnusLastB = \lyricmode {
  \repeat unfold 8 A
  \repeat unfold 12 gnu
  \repeat unfold 4 A
  \repeat unfold 4 gnu
  Dei ei Dei ei Dei ei ei ei
  Dei ei ei ei
  A A gnu gnu gnu
  gnu gnu gnu s~De De De De
  A A gnu gnu n n n n
  De De De De i
  An
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
  s1*13/16 |
  \tempo "en ralentissant"
  \time 5/4
  s1*5/4 |
  \time 4/4
  s1 | \bar "||"
  \tempo "très lent" 4=38
  s1 |
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup { "*" \italic "(rubato)" }
  s1*2 |
  \time 2/4
  s2 |
  \time 4/4
  s1*2 |
  \tempo "plus allant" 4=76
  s1*2 |
  \once \override Score.RehearsalMark.break-visibility = ##(#t #t #f)
  \mark \markup \fermata
  \time 3/8
  s4. |
  \time 5/6
  s1*5/6 |
  \time 8/9
  s1*8/9 |
  \time 2/4
  s2 |
  \time 4/4
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup \italic "(rubato)"
  s1*4 |
  \tempo "plus lent"
  s1 |
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup \italic "rall."
  s1 \bar "||" |
  \time 11/16
  \tempo "doux et léger" 16=324
  s1*11/16 |
  \time 10/16
  s1*10/16 |
  \time 11/16
  s1*11/16 |
  \time 9/16
  s1*9/16 |
  \time 7/6
  s1*7/6 |
  \time 13/16
  s1*13/16 |
  \time 11/16
  s1*11/16
  \time 7/8
  s1*7/8 |
  \time 2/4
  s2 |
  \time 5/16
  s1*5/16 |
  \time 9/16
  s1*9/16 |
  \time 10/16
  s1*10/16 |
  \time 9/16
  s1*9/16 |
  \time 6/16
  s1*6/16 |
  \time 13/16
  s1*13/16 |
  \tempo "plus retenu" 16=244
  \time 9/16
  s1*9/16 |
  \time 10/16
  s1*10/16 |
  \time 7/16
  s1*7/16 |
  \time 4/4
  s1 |
  \time 9/16
  s1*9/16 |
  \time 6/8
  s2. |
  \time 8/16
  \tempo "posé" 16=220
  s2 |
  \time 14/16
  s1*14/16 |
  \time 5/16
  \tempo "magistral" 4=172
  s1*5/16 |
  \time 11/24
  s1*11/24 |
  \time 8/16
  \tempo "doux et léger" 16=324
  s2 |
  \time 18/16
  s1*18/16 |
  \time 9/16
  s1*9/16 |
  \time 7/16
  s1*7/16 |
  \time 11/16
  s1*11/16 |
  \time 2/4
  s2 |
  s2 |
  \time 8/16
  s2 |
  \time 3/4
  s2. |
  \time 10/16
  s1*10/16 |
  \time 4/16
  s4 |
  \time 11/12
  s1*11/12 |
  \time 2/4
  s2 |
  \time 7/16
  s1*7/16 |
  \time 7/8
  s1*7/8 |
  \time 4/16
  s4 |
  \time 4/4
  s1 |
  \time 5/8
  s1*5/8 |
  \time 4/16
  s4 |
  \time 11/12
  s1*11/12 |
  \time 3/4
  s2. |
  \time 7/8
  s1*7/8 |
  \time 3/16
  s8. |
  \time 4/6
  s1*4/6 |
  \time 4/4
  \tempo "fort" 4=104
  s1*5 |
  \time 4/6
  s1*4/6 |
  \time 4/4
  s1 |
  \time 5/6
  s1*5/6 |
  \time 4/4
  s1*5 | \bar "|."
  
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
  \new Staff \new Voice = "voiceOne" << \voiceOne { \dynOne \dynTwo \dynThree \dynMOne \dynMis \dynMisEndA } \piecemarks >>
  \new Lyrics \lyricsto "voiceOne" { \agnusOne \agnusTwo \agnusThree \miserereOne \miseryAll \miseryEndA }
  \new Staff \new Voice = "voiceTwo" << \voiceTwo { \dynOne \dynTwo \dynThree \dynMTwo \dynMis \dynMisEndB \dynCredoB } \piecemarks >>
  \new Lyrics \lyricsto "voiceTwo" { \agnusOne \agnusTwo \agnusThree \miserereTwo \miseryAll \miseryEndB \credo \credoTwo \credoThree \credoFour \credoFourBis \credoFourTer \credoFive \credoSix \credoSeven \credoEight \agnusLastB }
  \new Staff \new Voice = "voiceThree" << \voiceThree { \dynOne \dynTwo \dynThree \dynMThree \dynMis \dynMisEndC } \piecemarks >>
  \new Lyrics \lyricsto "voiceThree" { \agnusOne \agnusTwo \agnusThree \miserereThree \miseryAll \miseryEndC \credo \credoTwo \credoFour \credoFourTer \credoSix \credoEight }
  \new Staff \new Voice = "voiceFour" << \voiceFour { \dynOne \dynTwo \dynThree \dynMFour \dynMis \dynMisEndD } \piecemarks >>
  \new Lyrics \lyricsto "voiceFour" { \agnusOne \agnusTwo \agnusThree \miserereFour \miseryAll \miseryEndD \credoTwo }
  \new Staff \new Voice = "voiceFive" << \voiceFive { \dynOne s\breve \dynThree \dynMFive \dynMis \dynMisEndE } \piecemarks >>
  \new Lyrics \lyricsto "voiceFive" { \agnusOne  \agnusThree \miserereFive \miseryAll \miseryEndE }
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

