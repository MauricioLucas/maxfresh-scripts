1::
MouseGetPos, OutputVarX, OutputVarY
FileAppend, ControlClick`, x%OutputVarX% y%OutputVarY%`,ahk_class D3 Main Window Class`,`,LEFT`,`,NAPos`n, c:\MouseRecordz.txt
return

2::
MouseGetPos, OutputVarX, OutputVarY
FileAppend, 1`. %OutputVarX% %OutputVarY%`n,  c:\MouseRecordz.txt
return
