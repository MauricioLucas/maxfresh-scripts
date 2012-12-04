F1::
arma("barb","2h","axe")
return

Start:
return

F2::
Reload

arma(text1,text2,text3)
{
	ControlClick, x422 y204,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 500
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\class\%text1%.bmp
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
    if (text2 = "2h")
	{
		ControlClick, x418 y230,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 500
		ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\%text2%.bmp
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
	ControlClick, x419 y256,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 500
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\arma\%text2%%text3%.bmp
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