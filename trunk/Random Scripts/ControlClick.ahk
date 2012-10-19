1::
WinGet, window, ID, A
MouseGetPos, x, y
return

2::
ControlClick, x%x% y%y%, ahk_id %window%
if   Errorlevel
   MsgBox, A problem occurred while sending the click to the window.
return

Esc::ExitApp