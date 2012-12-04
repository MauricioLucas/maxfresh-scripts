

item()
{
Loop
{
    ImageSearch, X, Y, 0, 0, A_ScreenWidth, A_ScreenHeight, ..img\ah.bmp
        If ErrorLevel = 0
        {
            ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
            Break
        }
        Else
        {
            ImageSearch, X, Y, 0, 0, A_ScreenWidth, A_ScreenHeight, ..img\cancel.bmp
               If ErrorLevel = 0
               {
			     ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
                 Sleep 100
                 ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
               }  
               Else
               {
                  
                  
        }
}
sleep 3000
ControlClick, x320 y158,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 3000
MouseClickDrag, left, 358, 328, 242, 330
SetKeyDelay, 50
send Immortal King's Stride
sleep 50
ControlClick, x330 y452,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 200
PriceLimit := 2350000
Loop 20
{
	MouseClickDrag, left, 342, 352, 244, 352
	Send % PriceLimit-Mod(A_Index-1,21)
	sleep 200
	send {Enter}
	sleep 1000
	ImageSearch, outx, outy, 0, 0, 1280, 720, c:\test1.bmp
		if ErrorLevel = 0
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
ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 3000