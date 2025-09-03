;---------HotStrings----------
; Global HotString Settings:
#HotString SI ; (SendInput - faster)
#Hotstring o ; (Omit the ending character)
#HotString * ; (no ending character required)
#HotString C0 ; (case insensitive)
#HotString ? ; (no starting character required)

  ; Symbols
  ::(1/2)::{ASC 0189} ; ½
  ::(1/4)::{ASC 0188} ; ¼
  ::(3/4)::{ASC 0190} ; ¾
  ::(BULLET)::{ASC 0149} ; •
  ::(DEGREE)::{ASC 0176} ; °
  ::(CENT)::{ASC 0162} ; ¢
  ::(MICRO)::{ASC 0181} ; µ
  ::(+-)::{ASC 0177} ; ±
  ::(^1)::{ASC 0185} ; ¹
  ::(^2)::{ASC 0178} ; ²
  ::(^3)::{ASC 0179} ; ³
  ::%?%::{ASC 0191} ; ¿
  ::%!%::{ASC 0161} ; ¡
  ::%/%::{ASC 0247} ; ÷
  ::%check%::{U+2714} ; ✔
  ::%bug%::{U+1F41B} ; 🐛
  ::%bucket%::{U+1FAA3} ; 🪣
  ::(LTE)::{U+2264} ; ≤
  ::(GTE)::{U+2265} ; ≥
  ::%->%::{U+2192} ; →
  ::%rarr%::{U+2192} ; →
  ::%<-%::{U+2190} ; ←
  ::%LARR%::{U+2190} ; ←
  ::%INF%::{U+221E} ; ∞
  ::%...%::{ASC 0133} ; …
  
  ; Emoticons
  ::%SHRUG%::¯\_(ツ)_/¯
  ::(TABLEFLIP)::(╯°□°)╯︵ ┻━┻
  
  ; Spanish:
  ::(n~)::{ASC 0241} ; ñ
  ::(a')::{ASC 0225} ; á
  ::(e')::{ASC 0233} ; é
  ::(i')::{ASC 0237} ; í
  ::(o')::{ASC 0243} ; ó
  ::(u')::{ASC 0250} ; ú

  ; ╾──────────────── Journal entry ────────────────╼
  ; example:
  ; ╾──sat, 23-aug-2025 11:52──╼
  ::%je%::
  FormatTime, currentDateStamp, , ddd',' dd-MMM-yyyy HH:mm
  StringLower, currentDateStamp, currentDateStamp
  
  output_text := "
(
╾──" currentDateStamp "──╼

)"

  SendInput, %output_text%
  return

  ; ╾──────────────── INLINE TIMESTAMP ────────────────╼
  ::%ts%::
  FormatTime, currentTimeStamp, , dd-MMM-yyyy HH:mm
  StringLower, currentTimeStamp, currentTimeStamp
  
  output_text := "
(
[" currentTimeStamp "]
)"

  SendInput, %output_text%
  return

  ; ╾──────────────── ✔ DONE ────────────────╼
  ; check something off and also time stamp it
  ; example: ✔ [03-sep-2025 10:08]
  ::%done%::
  FormatTime, currentTimeStamp, , dd-MMM-yyyy HH:mm
  StringLower, currentTimeStamp, currentTimeStamp
  
  output_text := "
(
[" currentTimeStamp "]
)"

  SendInput, {U+2714} %output_text%
  return

#HotString ?0