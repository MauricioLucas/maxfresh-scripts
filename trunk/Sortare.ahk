SetTimer, Loops, 20

Loops:
IfWinNotActive ahk_class GxWindowClass
Loop
{
ControlSend,,{Esc}, ahk_class GxWindowClass
sleep 500
ControlSend,,{F8}, ahk_class GxWindowClass
sleep 40000
ControlSend,,{Esc}, ahk_class GxWindowClass
sleep 500
ControlSend,,{F2}, ahk_class GxWindowClass
sleep 2000
Loop, 7
{
ControlSend,,{F6}, ahk_class GxWindowClass
sleep 1000
ControlSend,,{Esc}, ahk_class GxWindowClass
sleep 500
}
ControlSend,,{F11}, ahk_class GxWindowClass
sleep 1000
ControlSend,,{F12}, ahk_class GxWindowClass
sleep 1000
}
return

F1::Pause