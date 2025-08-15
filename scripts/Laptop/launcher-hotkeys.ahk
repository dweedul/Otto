#`:: RunIfNoExist("C:\Program Files\ConEmu\ConEmu64.exe", "ahk_class VirtualConsoleClass", True)

Launch_App2::
if (app2_presses > 0) ; SetTimer already started, so we log the keypress instead.
{
    app2_presses += 1
    return
}
; Otherwise, this is the first press of a new series. Set count to 1 and start
; the timer:
app2_presses := 1
SetTimer, App2Press, -400 ; Wait for more presses within a 400 millisecond window.
return

App2Press:
if (app2_presses = 1) ; The key was pressed once.
{
    Run, C:\Program Files\Notepad++\notepad++.exe
}
else if (app2_presses = 2) ; The key was pressed twice.
{
  IfWinExist, Calculator
  {
      WinRestore
      WinActivate ; use the window found above
  }
  else
    Run calc.exe
}
else if (app2_presses > 2)
{
    MsgBox, Three or more clicks detected.
}
; Regardless of which action above was triggered, reset the count to
; prepare for the next series of presses:
app2_presses := 0
return

RunIfNoExist(command, windowString, shouldActivate = False)
{
	DetectHiddenWindows, on

    If !WinExist(windowString)
        Run %command%
	Else If shouldActivate
		WinActivate, %windowString%
        
	DetectHiddenWindows, off

	return
}