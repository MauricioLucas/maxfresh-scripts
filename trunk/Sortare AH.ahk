WinGet, id, list, ahk_class GxWindowClass
Loop, %id%
{
   this_id := id%A_Index%
   WinGet, this_pid, PID, ahk_id %this_id%
   pid%A_Index% := this_pid
}

SetTimer, Loops, 20
;SetTimer, Sell, 180000
;SetTimer, Ah, 120000
return

Loops:
IfWinNotActive ahk_pid %pid1% 
{
postmsg("4", pid1)
Sleep 300
}
return


sell:
IfWinNotActive ahk_pid %pid1% 
{
postmsg("5", pid1)
;sleep 200
;postmsg("6", pid1)
}
return

Ah:
IfWinNotActive ahk_pid %pid1% 
{
postmsg("9", pid1)
}
return

F7::Pause

postmsg(text, pid)
{
   ; parse the text variable, this makes strings posible... postmessage operates on one character at a time
    Loop, Parse, text
    {

     ;Now were operating on one character from the text string we need to calculate its virtual key code.
      char:= A_LoopField
      char_number := asc(char) ; Convert the character to its ASCII integer value.
      char_hex := char_number      
            
      ; Convert an integer to hexadecimal:
      SetFormat, IntegerFast, hex
      char_hex += 0  ; Sets char_number to its hex value.
      char_hex .= ""  ; Necessary due to the "fast" mode.
      SetFormat, IntegerFast, d

      wParam := char_hex
     
     ; %wParam% - contains the hexadecimal value for the virtual keycode.
     ; this postmsg() function can only convert [a-z],[0-9] characters to its vk_code
     ; if you need to send any other key via postmessage a key code list is available 
     ; at http://msdn.microsoft.com/en-us/library/dd375731.aspx
     
     ; "0x0100 is the hexadecimal value for the WM_KEYDOWN command"
      PostMessage, 0x0100, %wParam%,,, ahk_pid %pid% 
      
     sleep, 200 ;//sleep may or may or may not be required
     
     ; "0x0101 is the hexadecimal value for the WM_KEYUP command"
      PostMessage, 0x0101, %wParam%,,, ahk_pid %pid%
   }
   
return
}