$f3::
MouseGetPos, thx, thy
return

$f1::
Loop
{
	Sleep 1000
	;~ MouseClick, Left, %thx%, %thy%
	MouseMove, %thx%, %thy%
	Sleep 100
	Send {a down}
	sleep 10
	Send {a up}
}

~x::
MouseClick, Right, 323, 781
return



$f2::Pause

