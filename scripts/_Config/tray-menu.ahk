; Auto-execute:

  TrayMenu_RemoveDefaults()
  TrayMenu_Tip("Otto!")
  TrayMenu_Icon(A_WorkingDir . "\..\resources\tray-icon.ico")

  TrayMenu_Add("WorkingDir")
  TrayMenu_Add("-")

  TrayMenu_Add("Rebuild")
  TrayMenu_Add("Exit")

Return