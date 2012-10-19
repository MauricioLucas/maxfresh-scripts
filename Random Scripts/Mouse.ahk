WinGet, wowid, List, World of Warcraft
$F1::
while Getkeystate("F1", "p")
{
 ControlClick, x650 y230,ahk_id %wowid1%,,LEFT,,NAPos
 sleep, 1000
}
return

