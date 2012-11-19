F1::
IfWinActive ahk_class D3 Main Window Class
Loop
{
sleep 2000
ControlSend,,{ENTER}, ahk_class D3 Main Window Class
sleep 500
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\diablo\test1.bmp
if ErrorLevel
   continue
{
ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 200
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
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\diablo\test2.bmp
if ErrorLevel
   continue
{
ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 200
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
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\diablo\test3.bmp
if ErrorLevel
   continue
{
ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 200
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
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\diablo\test4.bmp
if ErrorLevel
   continue
{
ControlClick, x%outx% y%outy%,ahk_class D3 Main Window Class,,LEFT,,NAPos
sleep 200
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

F2::Pause