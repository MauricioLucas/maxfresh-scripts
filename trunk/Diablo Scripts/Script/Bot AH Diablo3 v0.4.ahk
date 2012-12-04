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
	ControlClick, x161 y428,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 2000
	ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\auction.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 2000
		break
	}
	else
	{
		ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\cancel.bmp
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
Loop
{
	;item 1
	{
		legendara("Mempo of Twilight","1")
		;stats(1,"crtc","")
		; stats(2,"vit",100)
		price(300000,2)
	}

	;item 2
	{
		legendara("Bul-Kathos's Solemn Vow","")
		;stats(1,"dmg","")
		stats(2,"sock","")
		price(3200000,2)
	}

	;item 3
	{
		legendara("Bul-Kathos's Warrior Blood","")
		;stats(1,"dmg",670)
		stats(2,"sock","")
		stats(3,"crtd","")
		price(3200000,2)
	}

	;item 4
	{
		legendara("Vile Ward","2")
		;stats(1,"vit","")
		stats(2,"lifeproc","")
		;stats(3,"str",150)
		price(250000,2)
	}
	
	;item 5
	{
		legendara("Lacuni Prowlers","2")
		stats(1,"crtc","")
		;stats(2,"lifeproc",10)
		;stats(3,"str",150)
		price(700000,2)
	}
	
	;item 6
	{
		armura("ring")
		stats(1,"str","70")
		stats(2,"crtc",5)
		stats(3,"crtd",20)
		stats(4,"vit","")
		price(400000,2)
	}
	
	;item 7
	{
		armura("amulet")
		stats(1,"str","150")
		stats(2,"crtc",5)
		stats(3,"crtd",50)
		stats(4,"vit","")
		price(1500000,2)
	}
	
	;item 8
	{
		legendara("Immortal King's Triumph","")
		price(600000,2)
	}
	
	;item 9
	{
		;legendara("Immortal King's Triumph","")
		;stats(1,"armor","")
		;price(1500000,2)
	}

	;item 10
	{
		legendara("Immortal King's Triumph","")
		stats(1,"vit","")
		price(1500000,2)
	}

	;item 11
	{
		legendara("Immortal King's Stride","")
		;stats(1,"vit","")
		price(1500000,2)
	}
	
	;item 12
	{
		legendara("Immortal King's Irons","")
		stats(1,"crtd",30)
		price(2500000,2)
	}
	
	;item 13
	{
		legendara("Immortal King's Tribal Binding","")
		stats(1,"str",150)
		stats(2,"vit","")
		price(1500000,2)
	}
	
	;item 14
	{
		legendara("Echoing Fury",1)
		stats(1,"crtd",50)
		stats(2,"sock","")
		price(3000000,2)
	}
	
	;item 15
	{
		legendara("Manticore",1)
		stats(1,"dmg",870)
		stats(2,"sock",2)
		price(1000000,2)
	}

	;item 16
	{
		legendara("Inna's Temperance","")
		;stats(1,"dmg",870)
		;stats(2,"sock",2)
		price(2000000,2)
	}
	
	;item 17
	{
		legendara("Tal Rasha's Relentless Pursuit","")
		;stats(1,"dmg",870)
		;stats(2,"sock",2)
		price(500000,2)
	}
	
	;item 18
	{
		legendara("Zunimassa's Trail","")
		;stats(1,"dmg",870)
		;stats(2,"sock",2)
		price(600000,2)
	}

	;item 19
	{
		legendara("Inna's Vast Expanse","")
		;stats(1,"dmg",870)
		;stats(2,"sock",2)
		price(1500000,2)
	}

	;item 20
	{
		legendara("Natalya's Bloody Footprints","")
		;stats(1,"dmg",870)
		;stats(2,"sock",2)
		price(700000,2)
	}
}

F2::Pause
 ; settings are here
 
F3::Reload


legendara(text1,text2)
{
	MouseClickDrag, left, 422, 331, 242, 330
	send %text1%
	sleep 100
	if (text2 = 1)
	{
		ControlClick, x300 y356,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 100
	}
	else if (text2 = 2)
	{
		ControlClick, x294 y380,ahk_class D3 Main Window Class,,LEFT,,NAPos
		Sleep 100
	}
	ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\Legacy.bmp
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
		sleep 100
        send {Enter}
        sleep 500
        ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\buy.bmp
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
		if a_index = %text2%
		{
			break
		}
        Random, Interval, 1200, 1900
        Sleep %Interval%
	}
	Loop
	{
		ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\x.bmp
		if errorlevel = 1
		{
			break
		}
		else
		{
			ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
			Sleep 100
		}
	}
}

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
		sleep 100
	}
	sleep 100
	ControlClick, % scoor,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 100
	send %text3%
	sleep 100
}

armura(text)
{
	ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\LegCheck.bmp
	if errorlevel = 1
	{
		MouseClickDrag, left, 422, 331, 242, 330
		sleep 100
		Send {delete}
		Sleep 500
	}
	ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\armuracheck.bmp
	if errorlevel = 1
	{
		ControlClick, x420 y228,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 100
		ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\armura.bmp
		if errorlevel = 0
		{
			ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
			sleep 100
		}
		else
		{
		ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 2000
		gosub Start
		}
	}
	ControlClick, x420 y255,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 100
	ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\armura\%text%.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 100
	}
	else
	{
		ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 2000
		gosub Start
	}

}

arma(text1,text2,text3)
{
	ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\LegCheck.bmp
	if errorlevel = 1
	{
		MouseClickDrag, left, 422, 331, 242, 330
		sleep 100
		Send {delete}
		Sleep 500
	}
	ControlClick, x422 y204,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 100
	ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\class\%text1%.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 100
	}
	else
	{
		ControlClick, x422 y204,ahk_class D3 Main Window Class,,LEFT,,NAPos
		Sleep 100
	}
	ControlClick, x418 y230,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 100
	ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\%text2%.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 100
	}
	else
	{
		ControlClick, x418 y230,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 100
	}
	ControlClick, x419 y256,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 100
	ImageSearch, outx, outy, 0, 0, 1280, 720, *15 ..\Script\img\arma\%text2%%text3%.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 100
	}
	else
	{
		ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 2000
		gosub Start
	}
}