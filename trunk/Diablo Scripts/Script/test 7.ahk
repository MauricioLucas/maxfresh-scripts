F1::
arma("monk","1h","fist")
return

Start:
return

F2::
Reload

arma(text1,text2,text3)
{
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\LegCheck.bmp
	if errorlevel = 1
	{
		MouseClickDrag, left, 358, 328, 242, 330
		sleep 100
		Send {delete}
		Sleep 500
	}
	ControlClick, x422 y204,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 100
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\class\%text1%.bmp
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
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\%text2%.bmp
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
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\arma\%text2%%text3%.bmp
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