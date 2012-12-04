F1::
arma("mace")
return



arma(text)
{
	ControlClick, x419 y256,ahk_class D3 Main Window Class,,LEFT,,NAPos
	sleep 500
	ImageSearch, outx, outy, 0, 0, 1280, 720, C:\Documents and Settings\Max\Desktop\Script\img\%text%.bmp
	if errorlevel = 0
	{
		ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
		sleep 500
	}
	else
	{
		ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
		; gosub Start
		sleep 2000
	}
}
