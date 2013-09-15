f1::
InputBox, TTime,,,,150,100,743,579,,,How Mani
loop %ttime%
{
	MouseClick, Left, 554, 392
	Sleep 100
	
	loop 3
	{
		MouseClick, Left, 303, 357
		Sleep 100
	}
	
	Sleep 1000
	
	send %a_index%
	
	MouseClick, Left, 303, 357
	Sleep 2000
	MouseClick, Left, 303, 357
	Sleep 100
}
return

f2::
Pause