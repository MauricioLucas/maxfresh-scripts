WinGet, id, List, Lineage
#If WinActive("ahk_id " id1) 
LCtrl:: 
Send {Ctrl Down}
SetTimer ReleaseIt, -30000
Return

ReleaseIt:
Send {Ctrl Up}
Return

^Rctrl::
Send {Ctrl UP}
Return

$~Capslock::
$~^Capslock::
while GetKeyState("Capslock", "P")
{
Send 6
sleep 2000
}
return



F1::Suspend