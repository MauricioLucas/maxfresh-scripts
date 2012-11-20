;*.ahk created by Blizzkrieg Bot
;
;Find us on http://www.blizzkrieg.com
;for discussions around 
;this bot and everything else
;surrounding Diablo 3




Pause::
Reload
Return

NumpadAdd::
MouseMove, 200, 100
MouseGetPos,,,Boss
Random, a, 4, 12
c := a
Bought := 0
BuyLimit := 0
decrements := Round(Gauss(500, 250))
Loop
{
MinArmor := 
MinDmgGap := 
MinDmg := 
PriceLimit := 200000
Class := 4
MainCat := 3
SubCat := 7
Stat1 := "CritChance"
Value1 := "8"
Stat2 := "CritDmg"
Value2 := "35"
Stat3 := "IAS"
Value3 := "6"
ItemName := ""
Rarity := 5
lvlMin := "60"
lvlMax := "60"


;;;;;;;;;;;;;;;;;;;;;;;;;;AH CHECK;;;;;;;;;;;;;;;;;;;;;;;;;
sleep 500
ImageSearch, XX, YY, 310, 120, 400, 175, *100 ..\img\AHCheck.bmp
If ErrorLevel = 1
{
  Loop
  {
    MsgBox % "Can't find the Auction House! Press Pause to stop the bot or switch to the Equipment tab in the Auction Hosue and then close this warning."
    sleep 75
    ImageSearch, XX, YY, 310, 120, 400, 175, *100 ..\img\AHCheck.bmp
    If ErrorLevel = 0
      break
  }
}
;;;;;;;;;;;;;;;;;;;;;;;RESET TEXTBOXES;;;;;;;;;;;;;;;;;;;;;
MouseClickDrag, left, 265, 505, 370, 505
send {Delete}
send {+Home}
send {Delete}
MouseClickDrag, left, 404, 396, 429, 396
send {Delete}
MouseClickDrag, left, 404, 423, 429, 423
send {Delete}
MouseClickDrag, left, 404, 449, 429, 449
send {Delete}
MouseClickDrag, left, 373, 505, 437, 505
send {Delete}
MouseClickDrag, left, 270, 338, 300, 338
send %lvlMin%
MouseClickDrag, left, 318, 338, 348, 338
send %lvlMax%
;;;;;;;;;;;;;;;;;;;;;;;;CHOOSE RARITY;;;;;;;;;;;;;;;;;;;;;;;
sleep 1 * 25
ImageSearch, , , 357, 338, 407, 340, *15 ..\img\ps\Rarity\%Rarity%.bmp
If ErrorLevel
{
  MouseClick, left, 416, 339
  sleep 1 * 75
  XX := 396
  YY := 369 + (Rarity * 21)
  MouseClick, left, XX, YY
}
;;;;;;;;;;;;;;;;;;;;;;;;CHOOSE CLASS;;;;;;;;;;;;;;;;;;;;;;;;
sleep 1 * 25
ImageSearch, x, y, 269, 203, 319, 205, *15 ..\img\ps\Class\%Class%.bmp
If ErrorLevel
{
  WinActivate ahk_id %Boss%
  MouseClick, left, 414, 202
  MouseMove, 380, 230, 1
  WinActivate ahk_id %Boss%
  Loop 3
  {
    send {WheelDown}
  }
  sleep 1 * 25
  ImageSearch, XX, YY, 250, 220, 350, 500, *15 ..\img\wizard.bmp
  If ErrorLevel
  {
    sleep 1 * 25
    ImageSearch, XX, YY, 250, 220, 350, 500, *15 ..\img\wizard2.bmp
  }
  XX := XX + 10
  YY := YY + 3 - (Class * 21)
  WinActivate ahk_id %Boss%
  MouseClick, left, XX, YY
}
;;;;;;;;;;;;;;;;;;;;;;;CHOOSE CATEGORY;;;;;;;;;;;;;;;;;;;;;;
sleep 25
ImageSearch, , , 269, 254, 405, 256, *15 ..\img\ps\Type\m%MainCat%.bmp
If ErrorLevel
{
  WinActivate ahk_id %Boss%
  MouseClick, left, 416, 255
  sleep 1 * 75
  WinActivate ahk_id %Boss%
  MouseClick, left, 345, 282 + (MainCat * 21)
  sleep 1 * 75
  WinActivate ahk_id %Boss%
}
sleep 25
ImageSearch, , , 269, 283, 405, 285, *15 ..\img\ps\Type\m%MainCat%s%SubCat%.bmp
If ErrorLevel
{
  MouseClick, left, 416, 285
  sleep 1 * 70
  if (MainCat = 3)
  {
    MouseClick, left, 415, 311
    sleep 1 * 5
    MouseClick, left, 415, 311
    sleep 1 * 5
    MouseClick, left, 415, 311
    sleep 1 * 5
  }
  if (MainCat = 3 and SubCat > 11)
  {
    SubCat := SubCat - 1
    MouseClick, left, 415, 608
    sleep 1 * 75
    MouseClick, left, 415, 608
    sleep 1 * 75
    MouseClick, left, 415, 608
    sleep 1 * 75
  }
  WinActivate ahk_id %Boss%
  MouseClick, left, 345, 312 + (SubCat * 21)
  sleep 1 * 75
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;STAT SWITCHING;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Stat1Chosen := 0
Stat2Chosen := 0
Stat3Chosen := 0
sleep 1 * 100
ImageSearch, S1x, S1y, 265, 388, 374, 460, *15 ..\img\ws\%Stat1%.bmp
If ErrorLevel = 0
{
  If (S1y >= 388 and S1y <= 407)
  {
    Stat1Chosen := 1
    sleep 1 * 75
    ImageSearch, S2x, S2y, 265, 414, 374, 460, *15 ..\img\ws\%Stat2%.bmp
    If ErrorLevel = 0
    {
      If (S2y >= 414 and S2y <= 433)
      {
        Stat2Chosen := 1
        sleep 1 * 75
        ImageSearch, , , 265, 440, 374, 460, *15 ..\img\ws\%Stat3%.bmp
        If ErrorLevel = 0
          Stat3Chosen := 1
      }      
      Else
      {
        StatB := Stat2
        StatC := Stat3
        Stat2 := StatC
        Stat3 := StatB
        ValueB := Value2
        ValueC := Value3
        Value2 := ValueC
        Value3 := ValueB
        Stat3Chosen := 1
        sleep 1 * 75
        ImageSearch, , , 265, 414, 374, 460, *15 ..\img\ws\%Stat2%.bmp
        If ErrorLevel = 0
          Stat2Chosen := 1
      }
    }
  }
  Else If (S1y >= 414 and S1y <= 433)
  {
    StatA := Stat1
    StatB := Stat2
    Stat1 := StatB
    Stat2 := StatA
    ValueA := Value1
    ValueB := Value2
    Value1 := ValueB
    Value2 := ValueA
    Stat2Chosen := 1
    sleep 1 * 75
    ImageSearch, S1x, S1y, 265, 414, 374, 460, *15 ..\img\ws\%Stat1%.bmp
    If ErrorLevel = 0
    {
      If (S1y >= 388 and S2y <= 407)
      {
        Stat1Chosen := 1
        sleep 1 * 75
        ImageSearch, , , 265, 440, 374, 460, *15 ..\img\ws\%Stat3%.bmp
        If ErrorLevel = 0
          Stat3Chosen := 1
      }
      Else
      {
        StatA := Stat1
        StatC := Stat3
        Stat1 := StatC
        Stat3 := StatA
        ValueA := Value1
        ValueC := Value3
        Value1 := ValueC
        Value3 := ValueB
        Stat3Chosen := 1
        sleep 1 * 75
        ImageSearch, , , 265, 388, 374, 407, *15 ..\img\ws\%Stat1%.bmp
        If ErrorLevel = 0
          Stat1Chosen := 1
      }
    }
  }
  Else
  {
    StatA := Stat1
    StatC := Stat3
    Stat1 := StatC
    Stat3 := StatA
    ValueA := Value1
    ValueC := Value3
    Value1 := ValueC
    Value3 := ValueA
    Stat3Chosen := 1
    sleep 1 * 75
    ImageSearch, S1x, S1y, 265, 414, 374, 460, *15 ..\img\ws\%Stat1%.bmp
    If ErrorLevel = 0
    {
      If (S1y >= 388 and S2y <= 407)
      {
        Stat1Chosen := 1
        sleep 1 * 75
        ImageSearch, , , 265, 414, 374, 433, *15 ..\img\ws\%Stat2%.bmp
        If ErrorLevel = 0
          Stat2Chosen := 1
      }
      Else
      {
        StatA := Stat1
        StatB := Stat2
        Stat1 := StatB
        Stat2 := StatA
        ValueA := Value1
        ValueB := Value2
        Value1 := ValueB
        Value2 := ValueA
        Stat2Chosen := 1
        sleep 1 * 75
        ImageSearch, , , 265, 388, 374, 407, *15 ..\img\ws\%Stat1%.bmp
        If ErrorLevel = 0
          Stat1Chosen := 1
      }
    }
  }
}
Else If ErrorLevel > 0
{
  sleep 1 * 75
  ImageSearch, S2x, S2y, 265, 388, 374, 460, *15 ..\img\ws\%Stat2%.bmp
  If ErrorLevel = 0
  {
    If (S2y >= 388 and S2y <= 407)
    {
      StatA := Stat1
      StatB := Stat2
      Stat1 := StatB
      Stat2 := StatA
      ValueA := Value1
      ValueB := Value2
      Value1 := ValueB
      Value2 := ValueA
      Stat1Chosen := 1
      sleep 1 * 75
      ImageSearch, S3x, S3y, 265, 414, 374, 460, *15 ..\img\ws\%Stat3%.bmp
      If ErrorLevel = 0
      {
        If (S3y >= 414 and S3y <= 433)
        {
          StatC := Stat3
          StatB := Stat2
          Stat3 := StatB
          Stat2 := StatC
          ValueC := Value3
          ValueB := Value2
          Value3 := ValueB
          Value2 := ValueC
          Stat2Chosen := 1
        }
        Else
        {
          Stat3Chosen := 1
        }
      }
    }
    Else If (S2y >= 414 and S2y <= 433)
    {
      Stat2Chosen := 1
      sleep 1 * 75
      ImageSearch, S3x, S3y, 265, 388, 374, 460, *15 ..\img\ws\%Stat3%.bmp
      If ErrorLevel = 0
      {
        If (S3y >= 388 and S3y <= 407)
        {
          StatC := Stat3
          StatA := Stat1
          Stat3 := StatA
          Stat1 := StatC
          ValueC := Value3
          ValueA := Value1
          Value3 := ValueA
          Value1 := ValueC
          Stat1Chosen := 1
        }
        Else
        {
          Stat3Chosen := 1
        }
      }
    }
    Else
    {
      StatB := Stat2
      StatC := Stat3
      Stat2 := StatC
      Stat3 := StatB
      ValueB := Value2
      ValueC := Value3
      Value2 := ValueC
      Value3 := ValueB
      Stat3Chosen := 1
      sleep 1 * 75
      ImageSearch, S2x, S2y, 265, 388, 374, 433, *15 ..\img\ws\%Stat2%.bmp
      If ErrorLevel = 0
      {
        If (S2y >= 388 and S2y <= 407)
        {
          StatB := Stat2
          StatA := Stat1
          Stat2 := StatA
          Stat1 := StatB
          ValueB := Value2
          ValueA := Value1
          Value2 := ValueA
          Value1 := ValueB
          Stat1Chosen := 1
        }
        Else
        {
          Stat2Chosen := 1
        }
      }
    }
  }
  Else If ErrorLevel > 0
  {
    sleep 1 * 75
    ImageSearch, S3x, S3y, 265, 388, 374, 460, *15 ..\img\ws\%Stat3%.bmp
    If ErrorLevel = 0
    {
      If (S3y >= 388 and S3y <= 407)
      {
        StatC := Stat3
        StatA := Stat1
        Stat3 := StatA
        Stat1 := StatC
        ValueC := Value3
        ValueA := Value1
        Value3 := ValueA
        Value1 := ValueC
        Stat1Chosen := 1
      }
      Else If (S3y >= 414 and S3y <= 433)
      {
        StatB := Stat2
        StatC := Stat3
        Stat2 := StatC
        Stat3 := StatB
        ValueB := Value2
        ValueC := Value3
        Value2 := ValueC
        Value3 := ValueB
        Stat2Chosen := 1
      }
      Else
      {
        Stat3Chosen := 1
      }
    }
  }
}
;;;;;;;;;;;;;;;;;;;;;;;;;RESET STATS;;;;;;;;;;;;;;;;;;;;;;;
fail := 0
sleep 1 * 75
ImageSearch, , , 268, 392, 294, 402, *15 ..\img\NonePic.bmp
If (ErrorLevel and !Stat1Chosen)
{
  MouseClick, left, 382, 397
  WinActivate ahk_id %Boss%
  sleep 1 * 75
  ImageSearch, XX, YY, 365, 408, 548, 444, *15 ..\img\uparrow.bmp
  WinActivate ahk_id %Boss%
  MouseMove, XX, YY
  Loop
  {
    If mod((a_index - 1), 5) = 0
    {
      sleep 1 * 50
      ImageSearch, NX, NY, 259, 408, 548, 651, *15 ..\img\%Stat1%.bmp
      If !ErrorLevel
      {
        Stat1Chosen := 1
        MouseClick, left, XX + 10, YY + 1
        break 3
      }
      sleep 1 * 50
      ImageSearch, NX, NY, 257, 406, 303, 436, *15 ..\img\Non.bmp
      If !ErrorLevel
        break 2
    }
    send {WheelUp}
    sleep 1
    If a_index > 80
    {
      fail := 1
      break
    }
  }
  MouseClick, left, NX + 4, NY + 4
}
sleep 1 * 75
ImageSearch, , , 268, 410, 294, 435, *15 ..\img\NonePic.bmp
If (ErrorLevel and !Stat2Chosen)
{
  WinActivate ahk_id %Boss%
  MouseClick, left, 382, 421
  sleep 1 * 50
  ImageSearch, XX, YY, 365, 434, 548, 470, *15 ..\img\uparrow.bmp
  WinActivate ahk_id %Boss%
  MouseMove, XX, YY
  Loop
  {
    If mod((a_index - 1), 5) = 0
    {
      sleep 1 * 50
      ImageSearch, NX, NY, 259, 434, 548, 677, *15 ..\img\%Stat2%.bmp
      If !ErrorLevel
      {
        Stat2Chosen := 1
        MouseClick, left, XX + 10, YY + 1
        break
      }
      sleep 1 * 50
      ImageSearch, NX, NY, 257, 432, 303, 462, *15 ..\img\Non.bmp
      If !ErrorLevel
        break
    }
    send {WheelUp}
    sleep 1
    If a_index > 80
    {
      fail := 1
      break
    }
  }
  MouseClick, left, NX + 4, NY + 4
}
sleep 1 * 75
ImageSearch, , , 268, 435, 294, 461, *15 ..\img\NonePic.bmp
If (ErrorLevel and !Stat3Chosen)
{
  WinActivate ahk_id %Boss%
  MouseClick, left, 382, 447
  sleep 1 * 50
  ImageSearch, XX, YY, 365, 460, 548, 496, *15 ..\img\uparrow.bmp
  WinActivate ahk_id %Boss%
  MouseMove, XX, YY
  Loop
  {
    If mod((a_index - 1), 5) = 0
    {
      sleep 1 * 50
      ImageSearch, NX, NY, 259, 460, 548, 710, *10 ..\img\%Stat3%.bmp
      If !ErrorLevel
      {
        Stat3Chosen := 1
        MouseClick, left, XX + 10, YY + 1
        break
      }
      sleep 1 * 50
      ImageSearch, NX, NY, 257, 458, 303, 488, *15 ..\img\Non.bmp
      If !ErrorLevel
        break
      }
    send {WheelUp}
    sleep 1
    If a_index > 80
    {
      fail := 1
      break
    }
  }
  MouseClick, left, NX + 4, NY + 4
}
;;;;;;;;;;;;;;;;;;;;;;;CHOOSE 1st STAT;;;;;;;;;;;;;;;;;;;;;;
If !Stat1Chosen and Stat1 != ""
{
  MouseClick, left, 382, 397
  sleep 1 * 75
  ImageSearch, DAx, DAy, 365, 434, 548, 677, *15 ..\img\downarrow.bmp
  MouseMove, DAx, DAy
  sleep 1 * 50
  ImageSearch, XX, YY, 259, 408, 548, 651, *15 ..\img\%Stat1%.bmp
  If !ErrorLevel
    MouseClick, left, XX + 10, YY + 1
  Else If ErrorLevel = 1
  {
    Loop 11
    {
      Loop 5
      {
        send {WheelDown}
      }
      sleep 1 * 50
      ImageSearch, XX, YY, 259, 408, 548, 651, *15 ..\img\%Stat1%.bmp
      If !ErrorLevel
      {
        MouseClick, left, XX + 10, YY + 1
        break 2
      }
      If a_index = 11
      {
        MouseClick, left, 382, 397
        fail := 1
      }
    }
  }
}
MouseClickDrag, left, 404, 396, 429, 396
send %Value1%
;;;;;;;;;;;;;;;;;;;;;;;CHOOSE 2nd STAT;;;;;;;;;;;;;;;;;;;;;;
If !Stat2Chosen and Stat2 != ""
{
  MouseClick, left, 382, 423
  sleep 1 * 75
  ImageSearch, DAx, DAy, 365, 434, 548, 677, *15 ..\img\downarrow.bmp
  MouseMove, DAx, DAy
  sleep 1 * 50
  ImageSearch, XX, YY, 259, 434, 548, 677, *15 ..\img\%Stat2%.bmp
  If !ErrorLevel
    MouseClick, left, XX + 10, YY + 1
  Else If ErrorLevel = 1
  {
    Loop 11
    {
      Loop 5
      {
        send {WheelDown}
      }
      sleep 1 * 50
      ImageSearch, XX, YY, 259, 434, 548, 677, *15 ..\img\%Stat2%.bmp
      If !ErrorLevel
      {
        MouseClick, left, XX + 10, YY + 1
        break 2
      }
      If a_index = 11
      {
        MouseClick, left, 382, 423
        fail := 1
      }
    }
  }
}
MouseClickDrag, left, 404, 423, 429, 423
send %Value2%
;;;;;;;;;;;;;;;;;;;;;;;CHOOSE 3rd STAT;;;;;;;;;;;;;;;;;;;;;;
If !Stat3Chosen and Stat3 != ""
{
  MouseClick, left, 382, 449
  sleep 1 * 75
  ImageSearch, DAx, DAy, 365, 460, 548, 710, *15 ..\img\DA2.bmp
  MouseMove, DAx, DAy
  sleep 1 * 50
  ImageSearch, XX, YY, 259, 460, 548, 710, *10 ..\img\%Stat3%.bmp
  If !ErrorLevel
    MouseClick, left, XX + 10, YY + 1
  Else If ErrorLevel = 1
  {
    Loop 11
    {
      Loop 5
      {
        send {WheelDown}
      }
      sleep 1 * 50
      ImageSearch, XX, YY, 259, 460, 548, 710, *10 ..\img\%Stat3%.bmp
      If !ErrorLevel
      {
        MouseClick, left, XX + 10, YY + 1
        break 2
      }
      If a_index = 11
      {
        MouseClick, left, 382, 449
        fail := 1
      }
    }
  }
}
MouseClickDrag, left, 404, 449, 429, 449
send %Value3%
;----------------------------------------------------------;
WinActivate ahk_id %Boss%
MouseClick, left, 300, 505
send %ItemName%
;----------------------------------------------------------;
if !fail and StatCheck(Stat1, Stat2, Stat3)
{
Loop
{
WinActivate ahk_id %Boss%
MouseClickDrag, left, 373, 505, 437, 505
PriceLimitToSend := PriceLimit + 0 - mod(a_index, decrements)
send %PriceLimitToSend%
send {enter}
sleep 1000 + Gauss(500, 250)
loop
{
sleep 25
ImageSearch, x, y, 700, 200, 810, 230, *25 ..\img\NoItemsFound.bmp
if !ErrorLevel
  break
sleep 25
ImageSearch, , , 871, 210, 889, 218, *25 ..\img\Sold.bmp
if !ErrorLevel
  break
sleep 25
ImageSearch, x, y, 884, 212, 888, 217, *25 ..\img\coin.bmp
if !ErrorLevel
  break
}
if x = 884
{
;----------------------------------------------------------;
If MainCat < 2
{
2ndDMG := 0
1stDMG := 0
sleep 1 * 10
ImageSearch, , , 793, 209, 795, 219, *15 ..\img\1s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 1000
sleep 1 * 10
ImageSearch, , , 793, 209, 795, 219, *15 ..\img\2s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 2000
sleep 1 * 10
ImageSearch, , , 798, 209, 800, 219, *15 ..\img\0s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 0
sleep 1 * 10
ImageSearch, , , 798, 209, 800, 219, *15 ..\img\1s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 100
sleep 1 * 10
ImageSearch, , , 798, 209, 800, 219, *15 ..\img\2s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 200
sleep 1 * 10
ImageSearch, , , 798, 209, 800, 219, *15 ..\img\3s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 300
sleep 1 * 10
ImageSearch, , , 798, 209, 800, 219, *15 ..\img\4s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 400
sleep 1 * 10
ImageSearch, , , 798, 209, 800, 219, *15 ..\img\5s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 500
sleep 1 * 10
ImageSearch, , , 798, 209, 800, 219, *15 ..\img\6s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 600
sleep 1 * 10
ImageSearch, , , 798, 209, 800, 219, *15 ..\img\7s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 700
sleep 1 * 10
ImageSearch, , , 798, 209, 800, 219, *15 ..\img\8s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 800
sleep 1 * 10
ImageSearch, , , 798, 209, 800, 219, *15 ..\img\9s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 900
sleep 1 * 10
ImageSearch, , , 803, 209, 805, 219, *15 ..\img\0s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 0
sleep 1 * 10
ImageSearch, , , 803, 209, 805, 219, *15 ..\img\1s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 10
sleep 1 * 10
ImageSearch, , , 803, 209, 805, 219, *15 ..\img\2s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 20
sleep 1 * 10
ImageSearch, , , 803, 209, 805, 219, *15 ..\img\3s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 30
sleep 1 * 10
ImageSearch, , , 803, 209, 805, 219, *15 ..\img\4s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 40
sleep 1 * 10
ImageSearch, , , 803, 209, 805, 219, *15 ..\img\5s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 50
sleep 1 * 10
ImageSearch, , , 803, 209, 805, 219, *15 ..\img\6s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 60
sleep 1 * 10
ImageSearch, , , 803, 209, 805, 219, *15 ..\img\7s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 70
sleep 1 * 10
ImageSearch, , , 803, 209, 805, 219, *15 ..\img\8s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 80
sleep 1 * 10
ImageSearch, , , 803, 209, 805, 219, *15 ..\img\9s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 90
sleep 1 * 10
ImageSearch, , , 808, 209, 810, 219, *15 ..\img\0s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 0
sleep 1 * 10
ImageSearch, , , 808, 209, 810, 219, *15 ..\img\1s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 1
sleep 1 * 10
ImageSearch, , , 808, 209, 810, 219, *15 ..\img\2s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 2
sleep 1 * 10
ImageSearch, , , 808, 209, 810, 219, *15 ..\img\3s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 3
sleep 1 * 10
ImageSearch, , , 808, 209, 810, 219, *15 ..\img\4s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 4
sleep 1 * 10
ImageSearch, , , 808, 209, 810, 219, *15 ..\img\5s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 5
sleep 1 * 10
ImageSearch, , , 808, 209, 810, 219, *15 ..\img\6s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 6
sleep 1 * 10
ImageSearch, , , 808, 209, 810, 219, *15 ..\img\7s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 7
sleep 1 * 10
ImageSearch, , , 808, 209, 810, 219, *15 ..\img\8s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 8
sleep 1 * 10
ImageSearch, , , 808, 209, 810, 219, *15 ..\img\9s.bmp
If (ErrorLevel = 0)
  1stDMG := 1stDMG + 9
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
2ndDMG := 0
If MinDmgGap > 0
{
sleep 1 * 10
ImageSearch, , , 793, 239, 795, 249, *15 ..\img\1s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 1000
sleep 1 * 10
ImageSearch, , , 793, 239, 795, 249, *15 ..\img\2s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 2000
sleep 1 * 10
ImageSearch, , , 798, 239, 800, 249, *15 ..\img\0s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 0
sleep 1 * 10
ImageSearch, , , 798, 239, 800, 249, *15 ..\img\1s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 100
sleep 1 * 10
ImageSearch, , , 798, 239, 800, 249, *15 ..\img\2s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 200
sleep 1 * 10
ImageSearch, , , 798, 239, 800, 249, *15 ..\img\3s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 300
sleep 1 * 10
ImageSearch, , , 798, 239, 800, 249, *15 ..\img\4s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 400
sleep 1 * 10
ImageSearch, , , 798, 239, 800, 249, *15 ..\img\5s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 500
sleep 1 * 10
ImageSearch, , , 798, 239, 800, 249, *15 ..\img\6s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 600
sleep 1 * 10
ImageSearch, , , 798, 239, 800, 249, *15 ..\img\7s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 700
sleep 1 * 10
ImageSearch, , , 798, 239, 800, 249, *15 ..\img\8s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 800
sleep 1 * 10
ImageSearch, , , 798, 239, 800, 249, *15 ..\img\9s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 900
sleep 1 * 10
ImageSearch, , , 803, 239, 805, 249, *15 ..\img\0s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 0
sleep 1 * 10
ImageSearch, , , 803, 239, 805, 249, *15 ..\img\1s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 10
sleep 1 * 10
ImageSearch, , , 803, 239, 805, 249, *15 ..\img\2s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 20
sleep 1 * 10
ImageSearch, , , 803, 239, 805, 249, *15 ..\img\3s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 30
sleep 1 * 10
ImageSearch, , , 803, 239, 805, 249, *15 ..\img\4s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 40
sleep 1 * 10
ImageSearch, , , 803, 239, 805, 249, *15 ..\img\5s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 50
sleep 1 * 10
ImageSearch, , , 803, 239, 805, 249, *15 ..\img\6s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 60
sleep 1 * 10
ImageSearch, , , 803, 239, 805, 249, *15 ..\img\7s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 70
sleep 1 * 10
ImageSearch, , , 803, 239, 805, 249, *15 ..\img\8s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 80
sleep 1 * 10
ImageSearch, , , 803, 239, 805, 249, *15 ..\img\9s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 90
sleep 1 * 10
ImageSearch, , , 808, 239, 810, 249, *15 ..\img\0s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 0
sleep 1 * 10
ImageSearch, , , 808, 239, 810, 249, *15 ..\img\1s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 1
sleep 1 * 10
ImageSearch, , , 808, 239, 810, 249, *15 ..\img\2s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 2
sleep 1 * 10
ImageSearch, , , 808, 239, 810, 249, *15 ..\img\3s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 3
sleep 1 * 10
ImageSearch, , , 808, 239, 810, 249, *15 ..\img\4s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 4
sleep 1 * 10
ImageSearch, , , 808, 239, 810, 249, *15 ..\img\5s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 5
sleep 1 * 10
ImageSearch, , , 808, 239, 810, 249, *15 ..\img\6s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 6
sleep 1 * 10
ImageSearch, , , 808, 239, 810, 249, *15 ..\img\7s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 7
sleep 1 * 10
ImageSearch, , , 808, 239, 810, 249, *15 ..\img\8s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 8
sleep 1 * 10
ImageSearch, , , 808, 239, 810, 249, *15 ..\img\9s.bmp
If (ErrorLevel = 0)
  2ndDMG := 2ndDMG + 9
}
If ((MinDmgGap = 0 or 1stDMG - 2ndDMG + 1 > MinDmgGap) and 1stDMG + 1 > MinDmg )
  Bought := Bought + BuyOut(Bought, BuyLimit)
}
Else If (MinArmor > 0 and ((MainCat = 3 and SubCat <> 11 and SubCat <> 1) or (MainCat = 2 and SubCat = 3)))
{
Armor := 0
sleep 1 * 10
ImageSearch, , , 800, 210, 803, 218, *20 ..\img\1a.bmp
if ErrorLevel = 0
    Armor := Armor + 1000
sleep 1 * 10
ImageSearch, , , 805, 210, 808, 218, *20 ..\img\1a.bmp
if ErrorLevel = 0
    Armor := Armor + 100
sleep 1 * 10
ImageSearch, , , 805, 210, 808, 218, *20 ..\img\2a.bmp
if ErrorLevel = 0
    Armor := Armor + 200
sleep 1 * 10
ImageSearch, , , 805, 210, 808, 218, *20 ..\img\3a.bmp
if ErrorLevel = 0
    Armor := Armor + 300
sleep 1 * 10
ImageSearch, , , 805, 210, 808, 218, *20 ..\img\4a.bmp
if ErrorLevel = 0
    Armor := Armor + 400
sleep 1 * 10
ImageSearch, , , 805, 210, 808, 218, *20 ..\img\5a.bmp
if ErrorLevel = 0
    Armor := Armor + 500
sleep 1 * 10
ImageSearch, , , 805, 210, 808, 218, *20 ..\img\6a.bmp
if ErrorLevel = 0
    Armor := Armor + 600
sleep 1 * 10
ImageSearch, , , 805, 210, 808, 218, *20 ..\img\7a.bmp
if ErrorLevel = 0
    Armor := Armor + 700
sleep 1 * 10
ImageSearch, , , 805, 210, 808, 218, *20 ..\img\8a.bmp
if ErrorLevel = 0
    Armor := Armor + 800
sleep 1 * 10
ImageSearch, , , 805, 210, 808, 218, *20 ..\img\9a.bmp
if ErrorLevel = 0
    Armor := Armor + 900
sleep 1 * 10
ImageSearch, , , 805, 210, 808, 218, *20 ..\img\0a.bmp
if ErrorLevel = 0
    Armor := Armor + 0
sleep 1 * 10
ImageSearch, , , 810, 210, 813, 218, *20 ..\img\1a.bmp
if ErrorLevel = 0
    Armor := Armor + 10
sleep 1 * 10
ImageSearch, , , 810, 210, 813, 218, *20 ..\img\2a.bmp
if ErrorLevel = 0
    Armor := Armor + 20
sleep 1 * 10
ImageSearch, , , 810, 210, 813, 218, *20 ..\img\3a.bmp
if ErrorLevel = 0
    Armor := Armor + 30
sleep 1 * 10
ImageSearch, , , 810, 210, 813, 218, *20 ..\img\4a.bmp
if ErrorLevel = 0
    Armor := Armor + 40
sleep 1 * 10
ImageSearch, , , 810, 210, 813, 218, *20 ..\img\5a.bmp
if ErrorLevel = 0
    Armor := Armor + 50
sleep 1 * 10
ImageSearch, , , 810, 210, 813, 218, *20 ..\img\6a.bmp
if ErrorLevel = 0
    Armor := Armor + 60
sleep 1 * 10
ImageSearch, , , 810, 210, 813, 218, *20 ..\img\7a.bmp
if ErrorLevel = 0
    Armor := Armor + 70
sleep 1 * 10
ImageSearch, , , 810, 210, 813, 218, *20 ..\img\8a.bmp
if ErrorLevel = 0
    Armor := Armor + 80
sleep 1 * 10
ImageSearch, , , 810, 210, 813, 218, *20 ..\img\9a.bmp
if ErrorLevel = 0
    Armor := Armor + 90
sleep 1 * 10
ImageSearch, , , 810, 210, 813, 218, *20 ..\img\0a.bmp
if ErrorLevel = 0
    Armor := Armor + 0
sleep 1 * 10
ImageSearch, , , 815, 210, 818, 218, *20 ..\img\1a.bmp
if ErrorLevel = 0
    Armor := Armor + 1
sleep 1 * 10
ImageSearch, , , 815, 210, 818, 218, *20 ..\img\2a.bmp
if ErrorLevel = 0
    Armor := Armor + 2
sleep 1 * 10
ImageSearch, , , 815, 210, 818, 218, *20 ..\img\3a.bmp
if ErrorLevel = 0
    Armor := Armor + 3
sleep 1 * 10
ImageSearch, , , 815, 210, 818, 218, *20 ..\img\4a.bmp
if ErrorLevel = 0
    Armor := Armor + 4
sleep 1 * 10
ImageSearch, , , 815, 210, 818, 218, *20 ..\img\5a.bmp
if ErrorLevel = 0
    Armor := Armor + 5
sleep 1 * 10
ImageSearch, , , 815, 210, 818, 218, *20 ..\img\6a.bmp
if ErrorLevel = 0
    Armor := Armor + 6
sleep 1 * 10
ImageSearch, , , 815, 210, 818, 218, *20 ..\img\7a.bmp
if ErrorLevel = 0
    Armor := Armor + 7
sleep 1 * 10
ImageSearch, , , 815, 210, 818, 218, *20 ..\img\8a.bmp
if ErrorLevel = 0
    Armor := Armor + 8
sleep 1 * 10
ImageSearch, , , 815, 210, 818, 218, *20 ..\img\9a.bmp
if ErrorLevel = 0
    Armor := Armor + 9
sleep 1 * 10
ImageSearch, , , 815, 210, 818, 218, *20 ..\img\0a.bmp
if ErrorLevel = 0
    Armor := Armor + 0
if Armor + 1 > MinArmor
  Bought := Bought + BuyOut(Bought, BuyLimit)
}
Else
  Bought := Bought + BuyOut(Bought, BuyLimit)
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;PAUSE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  meanP := Round(3)
  devP := Round((meanP - mod(meanP, 2))/ 2)
  pausl := Round(Gauss(meanP, devP) * 1000)
  sleep pausl
}
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;GOLDCHECK;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
if (Initialized = 1 and mod(a_Min, rndmin) = 0)
{
  GOLDZ()
  rndmin := Gauss(20, 5)
  rndmin := Round(rndmin)
}
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;STAT CHECK;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
StatCheck(Stat1, Stat2, Stat3)
{
  NoneCountProfile := 0
  NoneCountUI := 0
  Loop 3
  {
    LFstat := Stat%a_index%
    ImageSearch, , , 265, 386, 374, 460, *15 ..\img\ws\%LFstat%.bmp
    If ErrorLevel = 2
    {
      NoneCountProfile := NoneCountProfile + 1
    }
    Else If ErrorLevel = 1
    {
      return 0
    }
    top := 393 + (a_index - 1) * 26
    bottom := top + 8
    ImageSearch, x, y, 269, top, 293, bottom, *15 ..\img\NonePic.bmp
    If !ErrorLevel
    {
      NoneCountUI := NoneCountUI + 1
    }
  }
  If NoneCountUI > NoneCountProfile or NoneCountUI < NoneCountProfile 
  {
    return 0
  }
  return 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;BUYOUT;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
BuyOut(BO, maxBO)
{
  sleep 1 * 50
  ImageSearch, , , 871, 210, 889, 218, *25 ..\img\Sold.bmp
  if ErrorLevel
  {
    WinActivate ahk_id %Boss%
    MouseClick, left, 832, 211
    sleep 1 * 10
    WinActivate ahk_id %Boss%
    MouseClick, left, 963, 584
    send {enter}
    sleep 1 * 50
    send {enter}
    Loop 100
    {
      sleep 1 * 50
      ImageSearch, , , 568, 242, 711, 244, *20 ..\img\NotAvailable.bmp
      if !ErrorLevel
      {
        send {enter}
        return 0
      }
      sleep 1 * 50
      ImageSearch, , , 450, 242, 900, 244, *20 ..\img\BuyOut.bmp
      if !ErrorLevel
      {
        send {enter}
        return 1
      }
    }
  }
  return 0
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;GAUSS DISTRIBUTION;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  Gauss(mean = 1.0, stddev = 0.5)
  {
    Random, Ra1, 0.0, 9999999999999999
    Ra2 := Ra1 / 10000000000000000
    Transform, d, Log, Ra2
    e := -2.0 * d
    Transform, f, Sqrt, e
    Random, Rb1, 0.0, 9999999999999999
    Rb2 := Rb1 / 10000000000000000
    Rb3 := 8.0 * ATan(1) * Rb2
    Transform, Rb4, Sin, Rb3
    g := Rb4 * f
    h := mean + (stddev * g)
    if h < 0
      h := 0
    return h
  }
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;GOLD CHECK/LOOT;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GOLDZ()
{
  sleep 1 * 50
  ImageSearch, gX, gY, 380, 63, 900, 71, *15 ..\img\balance.bmp
  gX := gX - 2
  x := 1
  gold := 0
  Loop
  {
    multiplikator := 10**(a_index - x)  
    Loop 10
    {
      digit := a_index - 1
      sleep 1 * 50
      ImageSearch, XX, YY, gX - 8, 63,  gX - 4, 71, *100 ..\img\%digit%g.bmp
      If ErrorLevel = 0
      {
        gold := gold + multiplikator * digit
        If digit = 0
          gX := gX - 11
        Else If digit = 1
          gX := gX - 6
        Else
          gX := gX - 8
        break
      }
      If a_index = 10
      {
        sleep 1 * 50
        ImageSearch, XX, YY, gX - 8, 63,  gX - 4, 71, *100 ..\img\kommag.bmp
        If ErrorLevel <> 0
        {
          goto goldgefunden
        }
        gX := gX - 4
        x := x + 1
      }
    }
  }
  goldgefunden:
  if gold + 1 < 200000* 3 + 1
  {
    MouseClick, left, 855, 105
    sleep 3000
    Loop 8
    {
      MouseClick, left, 436, 572
    }
    Loop 8
    {
      Loop 7
      {
        Y1 := 584 - a_index * 30
        Yc := 597 - a_index * 30
        Y2 := 610 - a_index * 30
        sleep 1 * 50
        ImageSearch, , , 248, Y1, 274, Y2, *20 ..\img\gold.bmp
        If (ErrorLevel = 0)
        {
          MouseClick, left, 340, Yc
          MouseClick, left, 340, 300
          Loop
          {
            sleep 1 * 50
            ImageSearch, , , 566, 660, 632, 666, *20 ..\img\sent.bmp
            If ErrorLevel = 0
              break
          }
          Loop
          {
            sleep 1 * 50
            ImageSearch, , , 566, 660, 632, 666, *20 ..\img\sent.bmp
            If (ErrorLevel = 1)
              break
          }
        }
        sleep 1 * 50
        ImageSearch, , , 248, Y1, 274, Y2, *20 ..\img\goldHL.bmp
        If (ErrorLevel = 0)
        {
          MouseClick, left, 340, Yc
          MouseClick, left, 340, 300
          Loop
          {
            sleep 1 * 50
            ImageSearch, , , 566, 660, 632, 666, *20 ..\img\sent.bmp
            If (ErrorLevel = 0)
              break
          }
          Loop
          {
            sleep 1 * 50
            ImageSearch, , , 566, 660, 632, 666, *20 ..\img\sent.bmp
            If (ErrorLevel = 1)
              break
          }
        }
      }
      Loop 7
      {
        MouseClick, left, 436, 381
      }
    }
    if gold + 1 < 10000
      MsgBox % "You are below 10,000g. No need to spam the AH anymore."
    sleep 1 * 75
    MouseClick, left, 420, 106
    sleep 1000
  }
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
