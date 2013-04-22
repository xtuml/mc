<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY % print "INCLUDE">
<![%print;[
<!ENTITY docbook.dsl PUBLIC "-//Norman Walsh//DOCUMENT DocBook Print Stylesheet//EN" CDATA dsssl>
]]>
]>
<style-sheet>
<style-specification id="print" use="docbook">
<style-specification-body> 

;; customize the print stylesheet
;; your stuff goes here...

;; main font
(define %body-font-family% "Helvetica")

;; graphics in title page
(define %titlepage-in-info-order% #t)

(define %generate-partintro-on-titlepage%
  ;; Should the PartIntro appear on the Part/Reference title page?
  #t)

;; Enumerate sections.
(define %section-autolabel% #t)

;; ANSI function synopses
(define %funcsynopsis-style% 'ansi)

(define %chap-app-running-heads% 
  ;; Generate running headers and footers on chapter-level elements.
  #t)

(define %graphic-default-extension% 
  ;; Default extension for graphic FILEREFs
  "png")

;; your stuff goes here...

</style-specification-body>
</style-specification>
<external-specification id="docbook" document="docbook.dsl">
</style-sheet>
