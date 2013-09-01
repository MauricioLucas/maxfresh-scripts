CoordMode, Mouse, Screen
1::
MouseGetPos, OutputVarX, OutputVarY
FileAppend, MouseClick`, left`, %OutputVarX%`, %OutputVarY%`n, c:\MouseRecordz.txt
return
