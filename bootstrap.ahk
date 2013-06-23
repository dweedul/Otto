SetWorkingDir C:\Dropbox\Programming\Otto\scripts
#Include      C:\Dropbox\Programming\Otto\scripts

; @IncludeFolders:
; A list of all the folders to search:
IncludeFolders = 
(comments ltrim
  %A_WorkingDir%\_Functions
)
; @IncludeOrCombine:
; Determines the action to perform.
; INCLUDE: Uses "#Include" statements to create the master file.  Good for normal use and for frequently updated scripts.
; COMBINE: Reads the contents of each file, and appends them to the master file.  Good for portability.
; COMPILE: Outputs a compiled EXE.  Good for maximum portability.
; ASK: Prompts the user
IncludeOrCombine := "INCLUDE"
; @OutputFileName:
; The output filename of the master file.
; ASK (default): Prompts the user
OutputFileName = %A_AppData%\AutoHotKey\Otto.ahk
; @FinalAction:
; What to do once the master file is created.
; "" (default): Do nothing
; RUN: Runs the script
; OPENFOLDER: Opens the folder in explorer
; ASK: Prompts the user
FinalAction := "RUN"

#Include AutoInclude.ahk