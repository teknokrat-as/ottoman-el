Typing Ottoman in Emacs
=======================

.. author:: Emre Sahin
.. categories:: none
.. tags:: 
.. comments:: 

Since Emacs 24 had right-to-left language support, it is theoretically
possible to write in Ottoman. But there is no standard input method
for Ottoman Turkish and writing Ottoman in, say, Farsi is not a
flowing experience.

Emacs is probably the most customizable and extendable piece of
software in the world. Therefore it should be very easy to set up
another input method specifically for Ottoman, right?

Right. I checked the sources and there was `an input method for
Farsi`_ It's aimed towards Westerners who don't typically have Farsi
keyboard. I decided to base my solution to that. 

However, as I have a `visual transliteration`_ myself, I decided to
use it instead with several shortcuts. It's a bit verbose but easier
to remember for infrequent use. And also with defined shortcuts
(Capital letter) for frequent use. So I decided to use visual
transliteration for Ottoman as a basis for the input method.

The letter input is as in the `visual transliteration`_ table. However
a few capital letter shortcuts are also added.

Following table shows the letters for basic input. Most of the three
letter constructs have alternatives as capital letters shown within
the parantheses.

=================  =================  =================  =================  
 Letter / Input      Letter / Input     Letter / Input      Letter / Input   
=================  =================  =================  =================  
      ء ``c``            ا e                ب bu1 (B)           پ bu3 (P)
      ت bo2 (T)          ث bo3              ج xu1 (C)           چ xu3 (Ç)
      ح x                خ xo1 (X)          د d                 ذ do1
      ر r                ز ro1 (Z)          ژ ro3 (J)           س s
      ش so3 (Ş)          ص z                ض zo1 (D)           ط t
      ظ to1              ع a                غ ao1 (Ğ)           ف fo1 (F)
      ق fo2 (Q)          ك lo5 (K)          ك k                 ك lo5
      گ ko7 (G)          ڭ ko3             ڭ lo5o3             ڭ ko5o3
      ل l                م m                ن bo1 (N)           و w
      ؤ wo5              ه h                ة ho2               ی y
      ي bu2              ئ yo5              آ eo6 (A)           أ eo5 (E)
=================  =================  =================  =================  
 

The digits all start with ``n``

=================  =================  =================  =================  =================  
 Letter / Input     Letter / Input     Letter / Input     Letter / Input     Letter / Input   
-----------------  -----------------  -----------------  -----------------  -----------------  
     ۰ n0               ۱ n1                ۲ n2             ۳ n3                 ۴ n4
     ۵ n5               ۶ n6                ۷ n7             ۸ n8                 ۹ n9
=================  =================  =================  =================  =================  


As the letters in Ottoman (and Farsi) sometimes don't obey the rules
of connection, sometimes a *zero width non joiner* character, namely a
0 width space between letters are required. This disallows two letters
to connect in usual manner. It can be put in this input method by
either ``&zwnj;``, ``||`` or ``<>``. This is important in writing
suffixes of some words. 

You can see other punctuation from the .el file itself. 

The file is downloadable from `Teknokrat's github page <https://github.org/teknokrat-as/ottoman-el/>`_


.. _`an input method for Farsi`: http://www.persoarabic.org/content/generated/doc.free/mohsen/PLPC/120036/current/accessPage
.. _`visual transliteration`: http://emresahin.net/visual-encoding-for-ottoman





