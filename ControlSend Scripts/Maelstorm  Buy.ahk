WinGet, wowid, List, World of Warcraft
SetTimer, Check, 20
SetTimer, Loops, 20
SetTimer, Macro, -100
return

Loops:
if keys > 0
return
else
{
     Random, Interval, 60000, 90000
     ControlSend,,77, ahk_id %wowid1%
     Sleep %Interval%
}
return

check:
key1 := GetKeyState("Shift","P")
key2 := GetKeyState("Ctrl","P")
key3 := GetKeyState("Alt","P")
keys := key1+key2+key3
return

Macro:
ControlSend,,8, ahk_id %wowid1%
return
F2::Pause
