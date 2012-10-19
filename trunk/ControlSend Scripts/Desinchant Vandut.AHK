WinGet, wowid, List, World of Warcraft
SetTimer, Check, 20
SetTimer, Loops, 20
SetTimer, Sell, 30000
return

Loops:
IfWinNotActive ahk_id %wowid1%
{
if keys > 0
return
else
{
ControlSend,,4, ahk_id %wowid1%
Sleep 1000
}
}
return

check:
key1 := GetKeyState("Shift","P")
key2 := GetKeyState("Ctrl","P")
key3 := GetKeyState("Alt","P")
keys := key1+key2+key3
return

sell:
IfWinNotActive ahk_id %wowid1%
{
if keys > 0
return
else
{
ControlSend,,56, ahk_id %wowid1%
}
}
return

F3::Pause
