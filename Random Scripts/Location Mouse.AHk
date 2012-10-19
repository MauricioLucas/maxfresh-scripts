
;================================================
; GG's Find Clickables Window Controller Aid

; This is a simple window location/color grabber
; for windows that need to be controlled and/or
; monitored or clicked during a run of that
; particular window or game.

; It will save the data using user-defined keys
; into an ini file that can be read by a script to
; help control the window

; This is a generic version of one I already use in
; several online games so I know it works.

; To keep this simple there is very little errorchecking
; in this script.
 
; Ini data gathered by this program has been used for 
;   in-game crafting
;   reactive fight monitoring
;   harvesting materials
;   healing party members
;   auto use of potions for mana, etc
;   auto looting

; and on a more practical note
;   button clicking for login scripts
;   auto insertion of passwords and login names 
;   auto activating program shortcuts on the desktop

; No hotkeys were injured during the making of this
; script
;------------------------------------------------

#SingleInstance, Force
SetTitleMatchMode, 2
CoordMode, Pixel, relative
CoordMode, Tooltip, relative
Coordmode, Mouse, Relative

keybutton = MButton            ; change this if your mouse does't have a middle button
w = w150                  ; this is the width of the button controls
PgmTitle = GG's Clickable Loc Finder
IniName = Clickable Locs.ini   ;the name of the ini file that will be written
LocX = 0                  ;default values for x and y
LocY = 0

;------------------------------------------------

ShowConfigGui:
Gui, +Resize
Gui, color, 0x8080F0
gui, Add, button,+E0x101 %w% gButtonGetWindowName,      Get Window Name
gui, Add, button,+E0x101 %w% gButtonGetClickableLoc,   Get Clickable Location
gui, Add, button,+E0x101 %w% gButtonGetClickableColor,   Get Clickable Color
gui, Add, button,+E0x101 x10 y110 w70 gButtonShowIni,         Show Ini
gui, Add, button,+E0x101 x90 y110 w70 gButtonClearIni,         Clear Ini
;gui, Add, button,+E0x101 %w% gButtonSaveClickableDat,   Save Clickable Data
Gui, Show,Title, %PgmName%
Winset, AlwaysOnTop, On,  %PgmName%

Return

;------------------------------------------------

GuiClose:
exitapp

;------------------------------------------------

ButtonGetWindowName:
Tooltip, 1. Activate the desired window.`n2. Press the %keybutton% mouse button anywhere inside the window's border to grab the clickable color for %LocX% %LocY%.
SoundBeep, 400, 500
KeyWait, %keybutton%, D 
ToolTip 
KeyWait, %keybutton%, U
WinGetTitle, WinName, A
Gosub, GetKeyName
IniWrite, %WinName%, %IniName%, Init, %KeyName%Win
SoundBeep, 1000, 500
Run,Notepad %IniName%
Return

;------------------------------------------------

ButtonGetClickableLoc:
Tooltip, 1. Activate the desired window.`n2. Place the mouse cursor on the window object to be located.`n3. Press the %keybutton% mouse button.
SoundBeep, 400, 500
KeyWait, %keybutton%, D 
ToolTip 
KeyWait, %keybutton%, U
MouseGetPos, LocX, LocY
Gosub, GetKeyName
IniWrite, %LocX%, %IniName%, Init, %KeyName%X
IniWrite, %LocY%, %IniName%, Init, %KeyName%Y
SoundBeep, 1000, 500
Run,Notepad %IniName%
Return

;------------------------------------------------

ButtonGetClickableColor:
If ((%LocX% = 0) || (%LocY% = 0))
{   MsgBox,,, Please set a clickable location first, Thank you.
   Return
}
Tooltip, 1. Activate the desired window.`n2. Press the %keybutton% mouse button anywhere inside the window's border to grab the clickable color for %LocX% %LocY%.
SoundBeep, 400, 500
KeyWait, %keybutton%, D 
ToolTip 
KeyWait, %keybutton%, U
PixelGetColor, LocColor, %LocX%, %LocY%, RGB
;Gosub, GetKeyName
IniWrite, %LocColor%, %IniName%, Init, %KeyName%Color
SoundBeep, 1000, 500
Run,Notepad %IniName%
Return

;------------------------------------------------

GetKeyName:
Inputbox, KeyName, What name do you want to use for this key in the ini file?`nNote: The letters X and Y will be appended to the location coordinates. the word Color will be appended to any saved colors.
Return

;------------------------------------------------

ButtonShowIni:
Run,Notepad %IniName%
Return

;------------------------------------------------

ButtonClearIni:
MsgBox,1,Delete Ini, Are you sure you want to delete %IniName%
IfMsgBox, OK
FileDelete, %IniName%
Return

;================================================