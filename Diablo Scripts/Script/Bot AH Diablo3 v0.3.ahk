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
SetKeyDelay, 50
Start:
Loop
{
	;item(1)
	item(2)
	item(3)
	;item(4)
}

F2::Pause
 ; settings are here
 
F3::Reload
settings1()
{
	legendara("Mempo of Twilight","1")
	stats(1,"crtc","")
	; stats(2,"vit",100)
	price(10005000,20)
}

settings2()
{
	legendara("Bul-Kathos's Solemn Vow","")
	;stats(1,"dmg","")
	stats(2,"sock","")
	price(3050000,20)
}

settings3()
{
	legendara("Bul-Kathos's Warrior Blood","")
	;stats(1,"dmg",670)
	stats(2,"sock","")
	stats(3,"crtd","")
	price(3050000,20)
}

settings4()
{
	legendara("Vile Ward","2")
	stats(1,"vit","")
	stats(2,"lifeproc",10)
	stats(3,"str",150)
	price(10005000,20)
}

 ; commands of script are below
item(text)
{
	Loop
	{
		ControlClick, x161 y428,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 2000
		ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\auction.bmp
		if errorlevel = 0
		{
			ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
			sleep 2000
			break
		}
		else
		{
			ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\cancel.bmp
			if errorlevel = 0
			{
				ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
				Sleep 500
				ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
				sleep 2000
			}
			else
			{
				MsgBox Fail To Start The AH At The Time %A_Now%
				ExitApp
			}
		}
	}
	settings%text%()
	ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 2000
}

legendara(text1,text2)
{
	MouseClickDrag, left, 358, 328, 242, 330
	send %text1%
	sleep 500
	if (text2 = 1)
	{
		ControlClick, x300 y356,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 500
	}
	else if (text2 = 2)
	{
		ControlClick, x294 y380,ahk_class D3 Main Window Class,,LEFT,,NAPos
		Sleep 500
	}
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\Legacy.bmp
	if !errorlevel
	{
		ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 2000
		gosub Start
	}
}

price(text1,text2)
{
	PriceLimit = %text1%
	k = %text2%
	l := k + 1
	Loop %text2%
	{
		MouseClickDrag, left, 373, 352, 223, 352
		Send % PriceLimit-Mod(A_Index-1,l)
		sleep 200
        send {Enter}
        sleep 700
        ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\buy.bmp
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
        Random, Interval, 1200, 1900
        Sleep %Interval%
	}
}

stats(text1,text2,text3)
{
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
		ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\stats\%text2%.bmp
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
		sleep 100
	}
	sleep 500
	ControlClick, % scoor,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 200
	send %text3%
	sleep 500
}

armura(text)
{
	ControlClick, x420 y228,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 500
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\armura.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 500
	}
	else
	{
		ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 2000
		gosub Start
	}
	ControlClick, x420 y255,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 500
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\armura\%text%.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 500
	}
	else
	{
		ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 2000
		gosub Start
	}
}

arma(text)
{
	ControlClick, x419 y256,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 500
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\arma\%text%.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 500
	}
	else
	{
		ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 2000
		gosub Start
	}
}

