F1::
SetKeyDelay, 50
Loop
{
ControlClick, x161 y428,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 3000
ControlClick, x320 y158,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 3000
imm("Immortal King's Stride","30")
}
 
F2::pause


Imm(text1,text2)
{
   Loop 3
   {
      MouseClickDrag, left, 358, 328, 242, 330
      sleep 100
      send %text1%
      send %test2%
   }
}