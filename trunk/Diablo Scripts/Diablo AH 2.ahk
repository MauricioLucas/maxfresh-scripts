F1::
files=
(
d:\Diablo\test1.bmp
d:\Diablo\test2.bmp
d:\Diablo\test3.bmp
d:\Diablo\test4.bmp
)
IfWinActive ahk_class D3 Main Window Class
{
   Loop
   {
      ControlSend,,{ENTER}
      Sleep 500
      ImageSearch, outx, outy, 0, 0, 1680, 1050, %A_LoopField%
      if   ErrorLevel
         continue
      ControlClick, x%outx% y%outy%,,,LEFT,,NAPos
      Sleep 200
      ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\Diablo\Buyout.bmp
      if ErrorLevel
         continue
      ControlClick, x%outx% y%outy%,,,LEFT,,NAPos
      Sleep 200
      ControlClick, x722 y693 ,,,LEFT,,NAPos
      Sleep 3000
      ControlClick, x848 y447 ,,,LEFT,,NAPos
      Sleep 2000
    }
}
return
