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
   Loop, parse, files, `n, `r
   {
      If   A_Index=1
      {
         ControlSend,,{ENTER}
         c :=   0
      }
      Sleep 500
      Loop
      {
         c += 1
         ImageSearch, px, py, (A_Index=1) ? 0 : px+1, (A_Index=1) ? 0 : py+1, 1680, 1050, %A_LoopField%
         if   ErrorLevel
            continue
         ControlClick, x%px% y%py%,,,LEFT,,NAPos
         Sleep 200
         ImageSearch, bx, by, 0, 0, 1680, 1050, d:\Diablo\Buyout.bmp
         if   ErrorLevel
            continue
         ControlClick, x%bx% y%by%,,,LEFT,,NAPos
         Sleep 200
         ControlClick, x722 y693 ,,,LEFT,,NAPos
         Sleep 3000
         ControlClick, x848 y447 ,,,LEFT,,NAPos
      }
      if   A_Index=4
         Sleep (c=4) ? 1000 : 2000
   }
}
return