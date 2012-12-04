F1::
armura("ring")
return

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
