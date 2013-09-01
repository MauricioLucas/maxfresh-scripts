Gui, New
Gui, Add, Checkbox, gWriteINI vvar1, 1680x1050?
Gui, Add, Checkbox, gWriteINI vvar2, 1024x768?
Gui, Show, AutoSize Center
Return
  
WriteINI:
Gui, Submit, NoHide
 
if (var1)
{
    IniWrite,1050, D:\Games\Riot\LoL\League of Legends\Config\Game.cfg,General,Height
	IniWrite,1680, D:\Games\Riot\LoL\League of Legends\Config\Game.cfg,General,Width
}
Else if (var2)
{
    IniWrite,768, D:\Games\Riot\LoL\League of Legends\Config\Game.cfg,General,Height
	IniWrite,1024, D:\Games\Riot\LoL\League of Legends\Config\Game.cfg,General,Width
}
Return
 
GuiClose:
ExitApp
