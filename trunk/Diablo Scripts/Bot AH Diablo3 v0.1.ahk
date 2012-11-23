Goto Coordonates

F1::
SetKeyDelay, 50
Start:
Loop
{
	item(1)
}

F2::Pause
 ; settings are here
settings1()
{
	legendara("Immortal Ki Stride")
	stats(1,"str",150)
	stats(2,"cur",100)
	price("2300000")
}

settings2()
{
}

settings3()
{
}

 ; commands of script are below
item(text)
{
	Loop
	{
		ControlClick, x161 y428,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 3000
		ImageSearch, outx, outy, 0, 0, 1280, 720, C:\Documents and Settings\Max\Desktop\Script\img\auction.bmp
		if errorlevel = 0
		{
			ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
			sleep 3000
			break
		}
		else
		{
			ImageSearch, outx, outy, 0, 0, 1280, 720, C:\Documents and Settings\Max\Desktop\Script\img\cancel.bmp
			if errorlevel = 0
			{
				ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
				Sleep 500
				ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
				sleep 3000
			}
			else
			{
				MsgBox Fail To Start The AH
				ExitApp
			}
		}
	}
	settings%text%()
	ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 3000
}

legendara(text)
{
	MouseClickDrag, left, 358, 328, 242, 330
	send %text%
	sleep 1000
}

price(text)
{
	PriceLimit = %text%
	Loop 20
	{
		MouseClickDrag, left, 342, 352, 244, 352
        Send % PriceLimit-Mod(A_Index-1,21)
		sleep 200
        send {Enter}
        sleep 1000
        ImageSearch, outx, outy, 0, 0, 1280, 720, c:\test1.bmp
			If ErrorLevel = 0
           {
				ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
				sleep 100 
				ControlClick, x962 y583,ahk_class D3 Main Window Class,,LEFT,,NAPos
				sleep 200
				ControlClick, x562 y519,ahk_class D3 Main Window Class,,LEFT,,NAPos
				sleep 5000
				send {Enter}
				break
			}
        Random, Interval, 1000, 1700
        Sleep %Interval%
	}
}

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
				ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
				sleep 3000
				gosub Start
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

armura(text)
{
	ControlClick, x420 y228,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 500
	ImageSearch, outx, outy, 0, 0, 1280, 720, C:\Documents and Settings\Max\Desktop\Script\img\armura.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 500
	}
	else
	{
		ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 3000
	}
	ControlClick, x420 y255,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 500
	ImageSearch, outx, outy, 0, 0, 1280, 720, C:\Documents and Settings\Max\Desktop\Script\img\%text%.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 1000
	}
	else
	{
		
		ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 3000
	}
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