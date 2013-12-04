#s:: Run "C:\bin\Nircmd\nircmd.exe" screensaver

RunIfNoExist(command, windowString, shouldActivate = False)
{
	DetectHiddenWindows, on

  If !WinExist(windowString)
  	Run command
	Else If shouldActivate
		WinActivate, windowString

	DetectHiddenWindows, off

	return
}