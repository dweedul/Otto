;Auto-Execute:
; Create a set of commonly used groups:

  ; ahk_group Explorer : Represents all Explorer windows
  GroupAdd Explorer, ahk_class CabinetWClass ;my computer
  GroupAdd Explorer, ahk_class ExploreWClass ;explorer
  
  ; ahk_group AllExplorer : Represents all windows with Explorer-like features, such as rename, copy, etc...
  GroupAdd AllExplorer, ahk_class CabinetWClass ;my computer
  GroupAdd AllExplorer, ahk_class ExploreWClass ;explorer
  GroupAdd AllExplorer, ahk_class #32770 ;open dialogs
  GroupAdd AllExplorer, ahk_class Progman ;desktop
  GroupAdd AllExplorer, ahk_class WorkerW ;Win V/7 desktop

  ; ahk_group AnyBrowser : Any browser window
  GroupAdd, AnyBrowser, - Google Chrome                ; Google Chrome
  GroupAdd, AnyBrowser, - Microsoft​ Edge               ; MSEdge
  GroupAdd, AnyBrowser, ahk_class MozillaUIWindowClass ; Firefox 3
  GroupAdd, AnyBrowser, ahk_class MozillaWindowClass   ; Firefox 5
  GroupAdd, AnyBrowser, ahk_class IEFrame              ; Internet Explorer
  
  ; ahk_group AnyPDF : Any PDF reader
  GroupAdd, AnyPDF, - SumatraPDF
  GroupAdd, AnyPDF, - Foxit Reader
  GroupAdd, AnyPDF, - Okular

  ; ahk_group AnyOffice : Any Office product
  GroupAdd, AnyOffice, - Excel
  GroupAdd, AnyOffice, - PowerPoint
  GroupAdd, AnyOffice, - Word
  GroupAdd, AnyOffice, - Outlook
  GroupAdd, AnyOffice, - OneNote

  ; ahk_group AnyTextEditor : Any Text Editor that I use
  GroupAdd, AnyTextEditor, - Microsoft Visual Studio
  GroupAdd, AnyTextEditor, - Notepad++
  GroupAdd, AnyTextEditor, - Atom
  GroupAdd, AnyTextEditor, - Visual Studio Code
  GroupAdd, AnyTextEditor, ahk_class VirtualConsoleClass
  
  ; ahk_group MouseScroll : All windows that will use the thumb-buttons for scrolling
  GroupAdd, MouseScroll, ahk_group Explorer
  GroupAdd, MouseScroll, ahk_group AllExplorer
  GroupAdd, MouseScroll, ahk_group AnyBrowser
  GroupAdd, MouseScroll, ahk_group AnyOffice
  GroupAdd, MouseScroll, ahk_group AnyTextEditor
  GroupAdd, MouseScroll, ahk_group AnyPDF

  ; ahk_group SuperDuperModeTeam : All windows that will use super-duper mode on the keyboard.
  GroupAdd, SuperDuperModeTeam, ahk_group AnyTextEditor
  
Return
