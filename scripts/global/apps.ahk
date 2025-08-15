#IfWinActive Google Chrome
  F2::Send ^+b
#IfWinActive

#IfWinActive ahk_group MouseScroll
  XButton2::Send {PgUp}
  XButton1::Send {PgDn}
#IfWinActive
