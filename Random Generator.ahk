


;collection of 3 functions to get generate a random string
MsgBox, % RandomGenerator(9, "NL")
ExitApp
 
RandomGenerator2(MaxLen, Mode)
{
    Loop
    {
        ;N=number,L=Lower,U=Upper
        Random, Rand, 1, 255
        If(InStr(Mode, "N") && Rand>47 && Rand<58)
        {
            Dummy := Dummy Chr(Rand)
            if(StrLen(Dummy) = MaxLen)
                break
            continue
        }
         
        If(InStr(Mode, "U") && Rand>64 && Rand<91)
        {
            Dummy := Dummy Chr(Rand)
            if(StrLen(Dummy) = MaxLen)
                break
            continue
        }
         
        If(InStr(Mode, "L") && Rand>96 && Rand<123)
        {
            Dummy := Dummy Chr(Rand)
            if(StrLen(Dummy) = MaxLen)
                break
            continue
        }
    }
    return, Dummy
}
 
esc:: ExitApp
 
 
RandomGenerator3(MaxLen, Mode)
{
    Range1 := (InStr(Mode, "N"))?"47|58":"0" , Range2 := (InStr(Mode, "U"))?"64|91":"0" , Range3 := (InStr(Mode, "L"))?"96|123":"0"
    Loop, 3
        StringSplit, Range%A_Index%, Range%A_Index%, |
    Dummy := (Range11 = 0)? ((Range21 = 0)? 3 : 2) : 1
    Loop, 3
        if(Range%A_Index%1 = 0)
            Range%A_Index%1 := Range%Dummy%1 , Range%A_Index%2 := Range%Dummy%2
    Loop
    {
        Random, Rand, 1, 255
        if((Rand>Range11 && Rand<Range12) || (Rand>Range21 && Rand<Range22) || (Rand>Range31 && Rand<Range32))
        {
            Dummy2:= Dummy2 Chr(Rand)
            if(StrLen(Dummy2) = MaxLen)
                break
        }
    }
    return, Dummy2
}
 
RandomGenerator(MaxLen, Mode)
{
    N:="0123456789" , U:= "QWERTYUIOPASDFGHJKLZXCVBNM" , L:= "qwertyuiopasdfghjklzxcvbnm"
    List := (InStr(Mode, "N")? N :"") . (InStr(Mode, "U")? U :"") . (InStr(Mode, "L")? L :"")
    Loop
    {
        Random, Rand, 1, StrLen(List)
        Dummy := Dummy SubStr(List, Rand, 1)
        if(StrLen(Dummy) = MaxLen)
            break
    }
    return, Dummy
}