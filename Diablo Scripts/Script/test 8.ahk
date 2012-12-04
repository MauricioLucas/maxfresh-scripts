coor1 = x362 y394
xcoor1 = 374
ycoor1 = 418
scoor1 = x394 y394
 ; coordonate for 2 now
coor2 = x364 y422
xcoor2 = 386 
ycoor2 = 444
scoor2 = x394 y418
 ; coordonate for 3 now
coor3 = x364 y444
xcoor3 = 378 
ycoor3 = 472
scoor3 = x398 y446
 ; coordonate for 4 now
coor4 = x364 y470
xcoor4 = 400
ycoor4 = 496
scoor4 = x394 y472
return

F1::
start:
stats(3,"str",50)
return

F2::Pause

stats(text1,text2,text3)
{
	coor := coor%text1%
	xcoor := xcoor%text1%
	ycoor := ycoor%text1%
	scoor := scoor%text1%
	ControlClick, % coor,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 100
	MouseMove xcoor, ycoor
	Sleep 100
	Loop 50
	{
		ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\stats\%text2%.bmp
		if a_index = 50
		{
			if errorlevel = 0
			{
				ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
				break
			}
			else
			{
				ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
				sleep 2000
				gosub Start
			}
		}
		else if !errorlevel
		{
			ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
			break
		}
		send {WheelDown}
		sleep 50
	}
	sleep 100
	ControlClick, % scoor,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 100
	send %text3%
	sleep 100
}