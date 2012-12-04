F1::
start:
armura("gloves")
return

f2::
Pause

F3::
Reload


armura(text)
{
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\LegCheck.bmp
	if errorlevel = 1
	{
		MouseClickDrag, left, 358, 328, 242, 330
		sleep 100
		Send {delete}
		Sleep 500
	}
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\armuracheck.bmp
	if errorlevel = 1
	{
		ControlClick, x420 y228,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 100
		ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\armura.bmp
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
	ImageSearch, outx, outy, 0, 0, 1280, 720, ..\Script\img\armura\%text%.bmp
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