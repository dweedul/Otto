PrintScreen::Send #+s

; Make insert a delete
Insert::Send {Delete}


#IfWinActive Google Chrome
  RShift & Left::Send ^+{Tab}
  RShift & Right::Send ^{Tab}
#IfWinActive

#IfWinActive Microsoft Excel
  ^Delete::Send {CtrlBreak}
#IfWinActive

; Microsoft Outlook
#IfWinActive ahk_class rctrl_renwnd32

; mark as read with middle mouse
~MButton::
    MouseClick, Left
    sleep 10
    Send, ^q
  Return

!+^#v::
  Send, ^k
  sleep 10
  Send, ^V
  sleep 10
  Send, {Enter}
  Return
  
#IfWinActive

#IfWinActive Microsoft Visual Basic for Applications
  XButton2::Send {F8}              ; Debug: Step Into
  XButton1::Send +{F8}             ; Debug: Step Over
  MButton::Send ^{F8}              ; Debug: Run-to-cursor
  ^Delete::Send {CtrlBreak}
#IfWinActive

; Debugging in VS
#IfWinActive (Debugging) ahk_exe devenv.exe
  XButton2::Send +{F10}             ; Debug: Step Into
  XButton1::Send {F10}             ; Debug: Step Over
  ;MButton::Send {F5}              ; Debug: Run
#IfWinActive
