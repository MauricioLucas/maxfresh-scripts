f1::
InputBox, TTime,,,,150,100,743,579,,,How Mani
loop %ttime%
{
	loop 4
	{
		Send {enter}
		Sleep 100
	}
	
	Sleep 1000
	
	send %a_index%
	
	loop 2
	{
		send {enter}
		if a_index = 1
			Sleep 2000
		else
			Sleep 100
	}
}
return

f2::
Pause