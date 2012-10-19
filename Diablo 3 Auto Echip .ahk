5::
IfWinActive ahk_class D3 Main Window Class
{
ControlSend,,n, ahk_class D3 Main Window Class
sleep 100
ControlClick, x1204 y779,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1204 y821,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1258 y819,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1302 y817,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1346 y819,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1398 y811,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1442 y817,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1490 y815,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1530 y813,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1588 y807,ahk_class D3 Main Window Class,,RIGHT,,NAPos
ControlClick, x1630 y817,ahk_class D3 Main Window Class,,RIGHT,,NAPos
sleep 500
ControlSend,,n, ahk_class D3 Main Window Class
}
return

F1::suspend
