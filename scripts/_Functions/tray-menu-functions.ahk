; Library of functions for building the tray menu

; Set the default tray menu action upon double-click
TrayMenu_SetDefault(action)
{
  Menu,Tray,Default,%action%
}

; Removes the default menu items and clears the menu.
; This is meant to be called first in a script.
TrayMenu_RemoveDefaults()
{
  Menu,Tray,NoStandard
  Menu,Tray,DeleteAll
}

TrayMenu_Icon(icon_file, icon_number=1)
{
  Menu,Tray,Icon, %icon_file%, %icon_number%
}

TrayMenu_Tip(tooltip)
{
  Menu,Tray,Tip, %tooltip%
}

TrayMenu_Add(MenuItem = "-", ActionSub = "TRAY_MENU_ACTION" )
{
  if MenuItem = Edit
    Menu,Tray,Add,Edit This Script, TRAY_MENU_ACTION
  else if MenuItem = Reload
    Menu,Tray,Add,Reload This Script, TRAY_MENU_ACTION
  else if MenuItem = Rebuild
    Menu,Tray,Add,Rebuild This Script, TRAY_MENU_ACTION
  else if MenuItem = Exit
    Menu,Tray,Add,Exit, TRAY_MENU_ACTION
  else if MenuItem = WindowSpy
    Menu,Tray,Add,Window Spy, TRAY_MENU_ACTION
  else if MenuItem in sep,-
    Menu,Tray,Add
  else if MenuItem in WorkingDir, %A_WorkingDir%, %A_ScriptDir%
    Menu,Tray,Add,Goto Script Folder, TRAY_MENU_ACTION
  else
    Menu,Tray,Add,%MenuItem%,%ActionSub%
}

TRAY_MENU_ACTION:
  If A_ThisMenuItem = Edit This Script
    Edit
  Else If A_ThisMenuItem = Exit
    ExitApp
  Else If A_ThisMenuItem = Reload This Script
    Reload
  Else If A_ThisMenuItem = Rebuild This Script 
    Run %_BuildScript%
  Else IF A_ThisMenuItem = Window Spy
    Run %A_AhkPath%\AU3_Spy.exe
  Else If A_ThisMenuItem = Goto Script Folder
    Run explore %A_WorkingDir%
return