WinGet, wowid, List, ahk_class l2UnrealWWindowsViewportWindow
SetTimer, Loops, 20
return

Loops:
ControlSend,,7, ahk_id %wowid1%
Sleep 2000
return

F6::Pause
