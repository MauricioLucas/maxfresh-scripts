F1::
SetKeyDelay, 50
Loop
{
ControlClick, x161 y428,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 3000
ControlClick, x320 y158,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 3000
imm("Immortal King's Stride")
sleep 3000
ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 3000
ControlClick, x161 y428,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 3000
ControlClick, x320 y158,ahk_class D3 Main Window Class,,LEFT,,NAPos
imm("Immortal King's Irons")
sleep 3000
ControlClick, x1051 y74,ahk_class D3 Main Window Class,,LEFT,,NAPos
}
 
F2::pause


Imm(text)
{
   Loop 3
   {
      MouseClickDrag, left, 358, 328, 242, 330
      sleep 100
      send %text%
   }
}