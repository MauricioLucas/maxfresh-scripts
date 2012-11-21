F1::
Loop, 10
{
    ImageSearch, X, Y, 0, 0, A_ScreenWidth, A_ScreenHeight, c:\test1.bmp
    If A_Index = 10
    {
        If ErrorLevel = 0
        {
            MsgBox, Found at the last loop
            Break
        }
        Else
        {
            MsgBox, Not found after 10 loop
            Break
        }
    }
    Else If !ErrorLevel
    {
        MsgBox, Found at Loop %a_Index%
        Break
    }
    Sleep, 2000
}
Return