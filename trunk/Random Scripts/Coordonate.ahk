a::
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox Culoarea la coordonatele x= %MouseX% si y= %MouseY% este %color% si %id%
return
Esc::ExitApp