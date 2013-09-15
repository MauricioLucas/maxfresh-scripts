SetKeyDelay 100
~PrintScreen::
Run, mspaint.exe
	sleep 500
    Send ^v
return

~^c::
send ^n{Right}{Enter}^v^s
KeyWait, enter
send !{f4}
return