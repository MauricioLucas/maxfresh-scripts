Goto Coordonates

F1::
stats(1,"str",70)
stats(2,"vit",100)
return
F2::Pause

stats(text1,text2,text3)
{
	global
	coor := coor%text1%
	xcoor := xcoor%text1%
	ycoor := ycoor%text1%
	scoor := scoor%text1%
	ControlClick, % coor,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 500
	MouseMove xcoor, ycoor
	Sleep 500
	Loop 50
	{
		ImageSearch, outx, outy, 0, 0, 1280, 720, C:\Documents and Settings\Max\Desktop\Script\img\%text2%.bmp
		if a_index = 50
		{
			if errorlevel = 0
			{
				ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
				break
			}
			else
			{
			MsgBox Ask in mIrc
			}
		}
		else if !errorlevel
		{
			ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
			break
		}
		send {WheelDown}
		sleep 100
	}
	sleep 500
	ControlClick, % scoor,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 500
	send %text3%
	sleep 500
}

Coordonates:
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
coor3 = x364 y470
xcoor3 = 400
ycoor3 = 496
scoor3 = x394 y472