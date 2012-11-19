Numpad1::
Loop
{
sleep 50
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\Test 1.bmp
if ErrorLevel
   continue
Click %OutX%, %OutY%
break
}
Loop
{
sleep 50
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\Test 2.bmp
if ErrorLevel
   continue
Click %OutX%, %OutY%
break
}
Send 25 ;  <--------
Send {Tab}
sleep 20
Send {Tab}
sleep 20
Send {Tab}
Send 30 ;  <--------
sleep 20
Send {Tab}
Send 40 ;  <--------
Sleep 20
Loop
{
sleep 50
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\Go in.bmp
if ErrorLevel
   continue
Click %OutX%, %OutY%
break
}
Return

Numpad2::
Loop
{
sleep 50
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\Test 1.bmp
if ErrorLevel
   continue
Click %OutX%, %OutY%
break
}
Loop
{
sleep 50
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\Test 2.bmp
if ErrorLevel
   continue
Click %OutX%, %OutY%
break
}
Send 18 ;  <--------
Send {Tab}
sleep 20
Send {Tab}
sleep 20
Send {Tab}
Send 19 ;  <--------
sleep 20
Send {Tab}
Send 80 ;  <--------
Sleep 20
Loop
{
sleep 50
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\Go in.bmp
if ErrorLevel
   continue
Click %OutX%, %OutY%
break
}
Return