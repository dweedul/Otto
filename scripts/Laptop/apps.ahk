#IfWinActive Google Chrome
  RShift & Left::Send ^+{Tab}
  RShift & Right::Send ^{Tab}
#IfWinActive

#IfWinActive Microsoft Excel
  ^Esc::Send {CtrlBreak}
#IfWinActive

#IfWinActive Microsoft Visual Basic for Applications
  ;RButton & MButton::Send {F5}     ; Debug: Run
  XButton2::Send {F8}              ; Debug: Step Into
  XButton1::Send +{F8}             ; Debug: Step Over
  ;RButton & XButton2::Send ^+{F8}  ; Debug: Step Out
  ;RButton & XButton1::Send ^{F8}   ; Debug: Run-to-cursor
#IfWinActive