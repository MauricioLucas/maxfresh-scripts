5::
IfWinActive ahk_class D3 Main Window Class
{
ControlSend,,n, ahk_class D3 Main Window Class
sleep 100
ControlClick, x1206 y777,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1206 y825,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1252 y821,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1296 y821,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1344 y779,ahk_class D3 Main Window Class,,RIGHT,,NAPos
Send {Alt Down}
ControlClick, x1342 y821,ahk_class D3 Main Window Class,,RIGHT,,NAPos
Send {Alt UP}
ControlClick, x1398 y821,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1444 y819,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1480 y819,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1536 y819,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1580 y815,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1630 y813,ahk_class D3 Main Window Class,,RIGHT,,NAPos

sleep 500
ControlSend,,n, ahk_class D3 Main Window Class
}
return

F1::suspend
