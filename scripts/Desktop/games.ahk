#IfWinActive FTL
  XButton2::Send 1
  XButton1::Send 5
#IfWinActive

#IfWinActive Mark of the Ninja
  XButton2::Send {LCtrl}
  XButton1::Send {LShift}
#IfWinActive

; Terraria
#IfWinActive Terraria
  ;XButton2::e
  ;XButton1::e
  Tab::Escape
  CapsLock::LControl
#IfWinActive

; Skyrim
#IfWinActive Skyrim
  XButton2::e
  XButton1::z
#IfWinActive

; Skyrim
#IfWinActive Fallout
  XButton2::e
  XButton1::v
#IfWinActive

; Borderlands 2
#IfWinActive Borderlands
  XButton2::e
  XButton1::v
#IfWinActive

; BioShock2
#IfWinActive BioShock 2
  XButton2::f
  XButton1::b
#IfWinActive

; BioShock Infinite
#IfWinActive BioShock Infinite
  XButton2::v
  XButton1::f
#IfWinActive

; Dwarf Fortress
#IfWinActive Dwarf Fortress ahk_class SDL_app
  XButton2::<
  XButton1::>
  MButton::+!n
#IfWinActive

#IfWinActive Stellaris
  XButton2::MButton
  XButton1::MButton
;  MButton::i
;  CapsLock::LCtrl
  RWin::Return
  +WheelUp::Send {=}
  +WheelDown::Send {-}
#IfWinActive

#IfWinActive Warcraft
  CapsLock::LCtrl
#IfWinActive

#IfWinActive Generation Zero
  XButton2::e
  CapsLock::LCtrl
#IfWinActive

#IfWinActive Hardspace
  XButton2::g
  XButton1::t
  CapsLock::LCtrl
#IfWinActive

  CapsLock::LCtrl
