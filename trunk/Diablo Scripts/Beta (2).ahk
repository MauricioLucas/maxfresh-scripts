F1::
Loop
{
MouseClickDrag, left, 358, 328, 242, 330
send imm
sleep 50
ControlClick, x330 y452,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 200
Loop 10
{
PriceLimit := 2400000
	MouseClickDrag, left, 342, 352, 244, 352
	Send % PriceLimit-Mod(A_Index-1,11)
	sleep 200
        send {Enter}
        sleep 500
        ImageSearch, outx, outy, 0, 0, 1280, 720, c:\test1.bmp
        If ErrorLevel = 0
           {
           ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
           sleep 50 
           ControlClick, x962 y583,ahk_class D3 Main Window Class,,LEFT,,NAPos
           sleep 100
           ControlClick, x562 y519,ahk_class D3 Main Window Class,,LEFT,,NAPos
           sleep 5000
           send {Enter}
           break
           }
        Random, Interval, 1300, 2000
        Sleep %Interval%
}
}

F2::Pause