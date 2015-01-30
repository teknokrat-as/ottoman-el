;;; ottoman.el  --- Quail package for inputting Ottoman Turkish	-*- coding: utf-8;-*-

;; Copyright (C) 2014 Teknokrat Yazilim Danismanlik A.Ş. 

;; Author: Emre Şahin <emre.sahin@teknokrat.com.tr>

;; Keywords: multilingual, input method, Ottoman Turkish, keyboard

;; This file is not part of GNU Emacs.

;; This is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This software is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; This file contains a collection of input methods for Ottoman
;; Turkish. 
;;
;; At this time, the following input methods are specified:
;;
;;  - (ottoman-transliterate-sahin) An easy to remember visual transliteration method 
;;

;;; Code:

(require 'quail)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; ottoman-transliterate-sahin
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(quail-define-package
 "ottoman-transliterate-sahin" 
 "Ottoman" 
 " ش" 
 nil
 "Visual Transliteration of Ottoman Turkish
  Rationale and Information: http://emresahin.net/visual-encoding-for-ottoman/index.html"
 nil ; TRANSLATION-KEYS 
 nil ; FORGET-LAST-SELECTION
 nil ; DETERMINISTIC
 nil ; KBD-TRANSLATE
 nil   ; SHOW-LAYOUT
 nil ; CREATE-DECODE-MAP 
 nil ; MAXIMUM-SHORTEST
 nil ; OVERLAY-PLIST
 nil ; UPDATE-TRANSLATION-FUNCTION
 nil ; CONVERSION-KEYS
 t)  ; SIMPLE


(quail-define-rules
 ;; PLAIN LETTERS
 ("c"  ?ء)        ;; hamzeh
 ("e"  ?ا)        ;; U+0627   & ARABIC LETTER ALEF  & الف
 ("bu1"  ?ب)        ;; U+0628   & ARABIC LETTER BEH  &
 ("bu3"  ?پ)        ;; U+067e   & ARABIC LETTER PEH  &
 ("bo2"  ?ت)
 ("bo3"  ?ث)
 ("xu1"  ?ج)
 ("xu3" ?چ)
 ("x"  ?ح)
 ("xo1" ?خ)
 ("d"  ?د)
 ("do1"  ?ذ)
 ("r"  ?ر)
 ("ro1"  ?ز)
 ("ro3" ?ژ)
 ("s"  ?س)
 ("so3" ?ش)
 ("z"  ?ص)
 ("zo1"  ?ض)
 ("t"  ?ط)
 ("to1"  ?ظ)
 ("a"  ?ع)
 ("ao1"  ?غ)
 ("fo1"  ?ف)
 ("fo2"  ?ق)
 ("lo5"  ?ك)
 ("k"  ?ك)
 ("ko7"  ?گ)
 ("ko3"  ?ڭ)
 ("lo5o3"  ?ڭ)
 ("ko5o3"  ?ڭ)
 ("l"  ?ل)
 ("m"  ?م)
 ("bo1"  ?ن)
 ("w"  ?و)
 ("wo5" ?ؤ)
 ("h"  ?ه)
 ("ho2"  ?ة)
 ("y"  ?ی)
 ("bu2"  ?ي)
 ("yo5" ?ئ)


 ;; SHORTCUTS

 ("A"  ?آ)        ;; U+0622   & ARABIC LETTER ALEF WITH MADDA ABOVE & الف با  کلاه
 ("E" ?أ)
 ("B"  ?ب)        ;; U+0628   & ARABIC LETTER BEH  &
 ("P"  ?پ)        ;; U+067e   & ARABIC LETTER PEH  &
 ("T"  ?ت)
 ("C"  ?ج)
 ("Ç" ?چ)
 ("X" ?خ)
 ("Z"  ?ز)
 ("J" ?ژ)
 ("S" ?ش)
 ("Ş" ?ش)
 ("D"  ?ض)
 ("G"  ?گ)
 ("Ğ"  ?غ)
 ("F"  ?ف)
 ("Q"  ?ق)
 ("N"  ?ن)
 ("Y"  ?ي)

 ;; NUMBERS
 ("n0"  ?۰)
 ("n1"  ?۱)
 ("n2"  ?۲)
 ("n3"  ?۳)
 ("n4"  ?۴)
 ("n5"  ?۵)
 ("n6"  ?۶)
 ("n7"  ?۷)
 ("n8"  ?۸)
 ("n9"  ?۹)

 ("\\/" ?\u066B)     ;; (ucs-insert #x066B)٫ 
 ("\\," ?\u066C)     ;; (ucs-insert #x066C)٬ 
 ("%" ?\u066A)       ;; (ucs-insert #x066A)٪ 
 ("+" ?\u002B)     ;; (ucs-insert #x002B)+   
 ("-" ?\u2212)     ;; (ucs-insert #x2212)−   
 ("\\*" ?\u00D7)     ;; (ucs-insert #x00D7)× 
 ("\\-" ?\u00F7)    ;; (ucs-insert #x00F7)÷  
 ("<" ?\u003C)     ;; (ucs-insert #x003C)<   
 ("=" ?\u003D)     ;; (ucs-insert #x003D)=   
 (">" ?\u003E)     ;; (ucs-insert #x003E)>   

 ("."  ?.)  ;;
 (":" ?\u003A)     ;; (ucs-insert #x003A):   
 ("!" ?\u0021)     ;; (ucs-insert #x0021)!   
 ("\\." ?\u2026)     ;; (ucs-insert #x2026)… 
 ("\\-" ?\u2010)     ;; (ucs-insert #x2010)‐ 
 ("-" ?\u002D)     ;; (ucs-insert #x002D)-   
 ("|" ?|)
 ;;("\\\\" ?\)
 ("//" ?/)
 ("*" ?\u002A)     ;; (ucs-insert #x002A)*   
 ("(" ?\u0028)     ;; (ucs-insert #x0028)(   
 (")" ?\u0029)     ;; (ucs-insert #x0029))   
 ("[" ?\u005B)     ;; (ucs-insert #x005B)[   
 ("[" ?\u005D)     ;; (ucs-insert #x005D)]   
 ("{" ?\u007B)     ;; (ucs-insert #x007B){   
 ("}" ?\u007D)     ;; (ucs-insert #x007D)}   
 ("\\<" ?\u00AB)     ;; (ucs-insert #x00AB)« 
 ("\\>" ?\u00BB)     ;; (ucs-insert #x00BB)» 

 ("," ?،)  ;; comma
 (";"  ?؛)  ;;
 ("?"  ?؟)  ;; question mark
 ("_"  ?ـ)  ;;

;; Following three are used to separate the letters normally joining. 
;; Like ه at the end of كلمه 
 ("&zwnj;" ?\u200C) ;; (ucs-insert #x200C)‌   
 ("||" ?\u200C)      ;;
 ("<>" ?\u200C)      ;;
 ("&zwj;" ?\u200D)  ;; (ucs-insert #x200D)‍   
 ("><" ?\u200D)     ;;
 ("&lrm;" ?\u200E)  ;; (ucs-insert #x200E)‎   
 ("&rlm;" ?\u200F)  ;; (ucs-insert #x200F)‏   
 ("&ls;" ?\u2028)   ;; (ucs-insert #x2028)   
 ("&ps;" ?\u2028)   ;; (ucs-insert #x2029)   
 ("&lre;" ?\u202A)   ;; (ucs-insert #x202A)‪ 
 ("&rle;" ?\u202B)   ;; (ucs-insert #x202B) 
 ("&pdf;" ?\u202C)   ;; (ucs-insert #x202C) 
 ("&lro;" ?\u202D)   ;; (ucs-insert #x202D) 
 ("&rlo;" ?\u202E)   ;; (ucs-insert #x202E) 
 ("&bom;" ?\uFEFF)   ;; (ucs-insert #xFEFF) 


 ("o4"  ?َ)  ;; üstün
 ("u4"  ?ِ)  ;; esre
 ("o9"  ?ُ)  ;; ötre
 ("u44"  ?ٍ)  ;; tenvin
 ("o44"  ?ً)  ;;
 ("o99" ?ٌ)  ;;
 ("o8"  ?ّ)  ;; şedde
 ("o0" ?ْ)   ;; cezm
 ("o6" ?\u0653)  ;; med
 ("o5" ?ٔ)  ;; hemze
 ("u5" ?ٕ)  ;; 
 ("$" ?\u0670)  ;; elif maksura

;;;;;;;  Latin Extensions
 ("\\" ?\\)  ;; خط اريب وارو
 ("\\\\" ?\\)
 ("\\~" ?~)
 ("\\@" ?@)
 ("\\#" ?#)
 ("\\^" ?^)
 ("\\|" ?|)
)


(setq ottoman-translation-table
      '(("c" . "ء") ("ء" . "c")        ;; hamzeh
        ("e" . "ا") ("ا" . "e")        ;; U+0627   & ARABIC LETTER ALEF  & الف
        ("آ" . "eo6") ("أ" . "eo5")
        ("bu1" . "ب") ("ب" . "bu1")        ;; U+0628   & ARABIC LETTER BEH  &
        ("bu3" . "پ") ("پ" . "bu3")        ;; U+067e   & ARABIC LETTER PEH  &
        ("bo2" . "ت") ("ت" . "bo2")
        ("bo3" . "ث") ("ث" . "bo3")
        ("xu1" . "ج") ("ج" . "xu1")
        ("xu3" . "چ") ("چ" . "xu3")
        ("x" . "ح") ("ح" . "x")
        ("xo1" . "خ") ("خ" . "xo1")
        ("d" . "د") ("د" . "d")
        ("do1" . "ذ") ("ذ" . "do1")
        ("r" . "ر") ("ر" . "r")
        ("ro1" . "ز") ("ز" . "ro1")
        ("ro3" . "ژ") ("ژ" . "ro3")
        ("s" . "س") ("س" . "s")
        ("so3" . "ش") ("ش" . "so3")
        ("z" . "ص") ("ص" . "z")
        ("zo1" . "ض") ("ض" . "zo1")
        ("t" . "ط") ("ط" . "t")
        ("to1" . "ظ") ("ظ" . "to1")
        ("a" . "ع") ("ع" . "a")
        ("ao1" . "غ") ("غ" . "ao1")
        ("fo1" . "ف") ("ف" . "fo1")
        ("fo2" . "ق") ("ق" . "fo2")
        ("lo5" . "ك") ("ك" . "lo5")
        ("k" . "ك") ("ك" . "k")
        ("lo5" . "ك") ("ك" . "lo5")
        ("ko7" . "گ") ("گ" . "ko7")
        ("ko3" . "ڭ") ("ڭ" . "ko3")
        ("lo5o3" . "ڭ")
        ("ko5o3" . "ڭ")
        ("l" . "ل") ("ل" . "l")
        ("m" . "م") ("م" . "m")
        ("bo1" . "ن") ("ن" . "bo1")
        ("w" . "و") ("و" . "w")
        ("wo5" . "ؤ") ("ؤ" . "wo5")
        ("h" . "ه") ("ه" . "h")
        ("ho2" . "ة") ("ة" . "ho2")
        ("y" . "ی") ("ی" . "y") ("ى" . "y")
        ("bu2" . "ي") ("ي" . "bu2")
        ("yo5" . "ئ") ("ئ" . "yo5")
         

         ;; SHORTCUTS
        ("A" . "آ")        ;; U+0622   & ARABIC LETTER ALEF WITH MADDA ABOVE & الف با  کلاه
        ("E" . "أ")
        ("B" . "ب")        ;; U+0628   & ARABIC LETTER BEH  &
        ("P" . "پ")        ;; U+067e   & ARABIC LETTER PEH  &
        ("T" . "ت")
        ("C" . "ج")
        ("Ç" . "چ")
        ("X" . "خ")
        ("Z" . "ز")
        ("J" . "ژ")
         ("S" . "ش")
         ("Ş" . "ش")
         ("D" . "ض")
         ("G" . "گ")
         ("Ğ" . "غ")
         ("F" . "ف")
         ("Q" . "ق")
         ("N" . "ن")
         ("Y" . "ي")

         ;; NUMBERS
         ("n0" . "۰") ("۰" . "n0") ("٠" . "n0")
         ("n1" . "۱") ("۱" . "n1") ("١" . "n1")
         ("n2" . "۲") ("۲" . "n2") ("٢" . "n2")
         ("n3" . "۳") ("۳" . "n3") ("٣" . "n3")
         ("n4" . "۴") ("۴" . "n4") ("٤" . "n4")
         ("n5" . "۵") ("۵" . "n5") ("٥" . "n5")
         ("n6" . "۶") ("۶" . "n6") ("٦" . "n6")
         ("n7" . "۷") ("۷" . "n7") ("٧" . "n7")
         ("n8" . "۸") ("۸" . "n8") ("٨" . "n8")
         ("n9" . "۹") ("۹" . "n9") ("٩" . "n9")
         
         ("\\/" . "\u066B") ("\u066B" . "\\/")     ;; (ucs-insert #x066B)٫ 
         ("\\," . "\u066C") ("\u066C" . "\\,")     ;; (ucs-insert #x066C)٬ 
         ("%" . "\u066A") ("\u066A" . "%")       ;; (ucs-insert #x066A)٪ 
         ("+" . "\u002B") ("\u002B" . "+")     ;; (ucs-insert #x002B)+   
         ("-" . "\u2212") ("\u2212" . "-")     ;; (ucs-insert #x2212)−   
         ("\\*" . "\u00D7") ("\u00D7" . "\\*")     ;; (ucs-insert #x00D7)× 
         ("\\-" . "\u00F7") ("\u00F7" . "\\-")    ;; (ucs-insert #x00F7)÷  
         ("<" . "\u003C") ("\u003C" . "<")     ;; (ucs-insert #x003C)<   
         ("=" . "\u003D") ("\u003D" . "=")     ;; (ucs-insert #x003D)=   
         (">" . "\u003E") ("\u003E" . ">")     ;; (ucs-insert #x003E)>   
         
         ("." . ".") ("." . ".")  ;;
         (":" . "\u003A") ("\u003A" . ":")     ;; (ucs-insert #x003A):   
         ("!" . "\u0021") ("\u0021" . "!")     ;; (ucs-insert #x0021)!   
         ("\\." . "\u2026") ("\u2026" . "\\.")     ;; (ucs-insert #x2026)… 
         ("\\-" . "\u2010") ("\u2010" . "\\-")     ;; (ucs-insert #x2010)‐ 
         ("-" . "\u002D") ("\u002D" . "-")     ;; (ucs-insert #x002D)-   
         ("|" . "|") ("|" . "|")
         ;;("\\\\" . "\") ("\" . "\\\\")
         ("*" . "\u002A") ("\u002A" . "*")     ;; (ucs-insert #x002A)*   
         ("(" . "\u0028") ("\u0028" . "(")     ;; (ucs-insert #x0028)(   
         (")" . "\u0029") ("\u0029" . ")")     ;; (ucs-insert #x0029))   
         ("[" . "\u005B") ("\u005B" . "[")     ;; (ucs-insert #x005B)[   
         ("[" . "\u005D") ("\u005D" . "[")     ;; (ucs-insert #x005D)]   
         ("{" . "\u007B") ("\u007B" . "{")     ;; (ucs-insert #x007B){   
         ("}" . "\u007D") ("\u007D" . "}")     ;; (ucs-insert #x007D)}   
         ("\\<" . "\u00AB") ("\u00AB" . "\\<")     ;; (ucs-insert #x00AB)« 
         ("\\>" . "\u00BB") ("\u00BB" . "\\>")     ;; (ucs-insert #x00BB)» 
         
         ("," . "،") ("،" . ",")  ;; comma
         (";"  . "؛") 
         ("؛" . ";")
         ("?"  . "؟")
         ("؟"  . "?")
         ("_"  . "ـ")
         ("ـ" . "_")

         ;; Following three are used to separate the letters normally joining. 
         ;; Like ه at the end of كلمه 
         ("&zwnj;" . "\u200C") ;; (ucs-insert #x200C)‌   
         ("||" . "\u200C") ("\u200C" . "||")      ;;
         ("<>" . "\u200C")       ;;
         ("&zwj;" . "\u200D") ("\u200D" . "&zwj;")  ;; (ucs-insert #x200D)‍   
         ("><" . "\u200D") ("\u200D" . "><")     ;;
         ("&lrm;" . "\u200E") ("\u200E" . "&lrm;")  ;; (ucs-insert #x200E)‎   
         ("&rlm;" . "\u200F") ("\u200F" . "&rlm;")  ;; (ucs-insert #x200F)‏   
         ("&ls;" . "\u2028") ("\u2028" . "&ls;")   ;; (ucs-insert #x2028)   
         ("&ps;" . "\u2028") ("\u2028" . "&ps;")   ;; (ucs-insert #x2029)   
         ("&lre;" . "\u202A") ("\u202A" . "&lre;")   ;; (ucs-insert #x202A)‪ 
         ("&rle;" . "\u202B") ("\u202B" . "&rle;")   ;; (ucs-insert #x202B) 
         ("&pdf;" . "\u202C") ("\u202C" . "&pdf;")   ;; (ucs-insert #x202C) 
         ("&lro;" . "\u202D") ("\u202D" . "&lro;")   ;; (ucs-insert #x202D) 
         ("&rlo;" . "\u202E") ("\u202E" . "&rlo;")   ;; (ucs-insert #x202E) 
         ("&bom;" . "\uFEFF") ("\uFEFF" . "&bom;")   ;; (ucs-insert #xFEFF) 
         
         
         ("o4" .  "َ") ("َ" . "o4")  ;; üstün
         ("u4" .  "ِ") ("ِ" . "u4") ;; esre
         ("o9" .  "ُ") ("ُ" . "o9")  ;; ötre
         ("u44" . "ٍ") ("ٍ" . "u44")  ;; tenvin
         ("o44" . "ً") ("ً" . "o44")  ;;
         ("o99" . "ٌ") ("ٌ" . "o99")  ;;
         ("o8" .  "ّ") ("ّ" . "o8") ;; şedde
         ("o0" . "ْ") ("ْ" . "o0")   ;; cezm
         ("o6" . "\u0653") ("\u0653" . "o6")  ;; med
         ("o5" . "ٔ") ("ٔ" . "o5")  ;; hemze
         ("u5" . "ٕ") ("ٕ" . "u5")  ;; 
         ("$" . "\u0670") ("\u0670" . "$")  ;; elif maksura
         
;;;;;;;  Latin Extensions
         ("\\" . "\\") ("\\" . "\\")  ;; خط اريب وارو
         ("\\\\" . "\\") ("\\" . "\\\\")
         ("\\~" . "~") ("~" . "\\~")
         ("\\@" . "@") ("@" . "\\@")
         ("\\#" . "#") ("#" . "\\#")
         ("\\^" . "^") ("^" . "\\^")
         ("\\|" . "|") ("|" . "\\|")
         ("إ" . "eu5") (" " . " ")
         ("'" . "'") 
         ))


(defun translate-string-ottoman-turkish (inputstr)
  (cond 
   ((equal inputstr "") "")
   ((and (>= (length inputstr) 5) (assoc (substring inputstr 0 5) ottoman-translation-table))
    (concat (cdr (assoc (substring inputstr 0 5) ottoman-translation-table)) 
            (translate-string-ottoman-turkish (substring inputstr 5))))
   ((and (>= (length inputstr) 4) (assoc (substring inputstr 0 4) ottoman-translation-table))
    (concat (cdr (assoc (substring inputstr 0 4) ottoman-translation-table)) 
            (translate-string-ottoman-turkish (substring inputstr 4))))
   ((and (>= (length inputstr) 3) (assoc (substring inputstr 0 3) ottoman-translation-table))
    (concat (cdr (assoc (substring inputstr 0 3) ottoman-translation-table)) 
            (translate-string-ottoman-turkish (substring inputstr 3))))
   ((and (>= (length inputstr) 2) (assoc (substring inputstr 0 2) ottoman-translation-table))
    (concat (cdr (assoc (substring inputstr 0 2) ottoman-translation-table)) 
            (translate-string-ottoman-turkish (substring inputstr 2))))
   ((and (>= (length inputstr) 1) (assoc (substring inputstr 0 1) ottoman-translation-table))
    (concat (cdr (assoc (substring inputstr 0 1) ottoman-translation-table)) 
            (translate-string-ottoman-turkish (substring inputstr 1))))
   (t (progn (message (concat "No translation for " (substring inputstr 0 1)))
             (concat (substring inputstr 0 1) (translate-string-ottoman-turkish (substring inputstr 1)))))))
         
(defun convert-ottoman-turkish (start end)
  (interactive "r")
  (let ((text (buffer-substring-no-properties start end)))
    (delete-region start end)
    (insert (translate-string-ottoman-turkish text))))


;;; ottoman.el ends here
