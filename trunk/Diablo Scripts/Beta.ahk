F1::
Loop
{
ControlClick, x214 y623,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 100
ControlClick, x388 y227,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 100
MouseClickDrag, left, 478, 479, 260, 483
send imm
sleep 50
ControlClick, x432 y663,ahk_class D3 Main Window Class,,LEFT,,NAPos
Loop 10
{
PriceLimit := 2600000  
	MouseClickDrag, left, 392, 513, 268, 513
	Send % PriceLimit-Mod(A_Index-1,11)
	sleep 50
        send {Enter}
        sleep 500
        ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\diablo\test1.bmp
        If ErrorLevel = 0
           {
           ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
           sleep 50 
           ControlClick, x1304 y849,ahk_class D3 Main Window Class,,LEFT,,NAPos
           sleep 100
           ControlClick, x734 y759,ahk_class D3 Main Window Class,,LEFT,,NAPos
           sleep 5000
           send {Enter}
           break
           }
        Random, Interval, 1500, 2300
        Sleep %Interval%
}
ControlClick, x1440 y107,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 1000
}

F2::Pause