1::
MouseGetPos, OutputVarX, OutputVarY
FileAppend, ControlClick`, x%OutputVarX% y%OutputVarY%`,ahk_class D3 Main Window Class`,`,RIGHT`,`,NAPos`n, c:\MouseRecordz.txt
return
