SetKeyDelay, 50
Gui, Add, Text, x86 y27 w60 h20 , Mail
Gui, Add, Text, x346 y27 w60 h20 , Leauge
Gui, Add, Text, x196 y7 w110 h20 , Number Of Accoutns
Gui, Add, Edit, x196 y27 w100 h20 r1 vnum Number,1
Gui, Add, DropDownList, x326 y127 w130 h60 Choose2 vRegion, North America|EU West|EU Nordic & East|Brasil|Turkey|Russia|Latin America North|Latin America South
Gui, Add, Button, x186 y297 w120 h60 , Start
Gui, Add, Text, x6 y227 w50 h20 , Post Code
Gui, Add, Text, x256 y127 w50 h20 , Region
;~ Gui, Add, Edit, x76 y227 w120 h20 vpostalcode, 22408
;~ Gui, Add, Radio, vRo Checked, RO
Gui, Add, Radio, vUS Checked, U.S.
Gui, Add, Radio, vUK , UK
Gui, Show, x459 y285 h365 w467, Email Creator
Return

GuiClose:
ExitApp



buttonStart:
Gui, Submit
if us = 1
{
    url := "https://edit.europe.yahoo.com/registration?.intl=ro&.lang=ro-RO&.pd=ym_ver%253D0%2526c%253D%2526ivt%253D%2526sg%253D&new=1&.done=http%3A//mail.yahoo.com&.src=ym&.v=0&.u=7s0pjj191kq1n&partner=&.partner=&pkg=&stepid=&.p=&promo=&.last="
}
if UK = 1
{
    url := "https://edit.europe.yahoo.com/registration?"
}
url2 := "https://signup.leagueoflegends.com/en/signup/index"
ieObj := ComObjCreate("InternetExplorer.Application")
loop %num%
{
    ieObj.Visible:=1, ieObj.Navigate(url), Wait2(ieObj)

    Random,Len , 1, 12
    nickname = iD0minate|AreYouMad|Pent4Kill|TeemoTroll|Shi3ld|Av3nger|Asg4rd|B4ttlestar|Wr4ith|P3gasus|Cyl0ns|Pr3dator
    StringSplit, NewName, nickname,|
    manualid := NewName%len%
    Random,Len , 3, 5
    yahooid := manualid  RandomGenerator(Len,"N")
    
    Random,Len , 6, 8
    emailpass := RandomGenerator(1,"U") RandomGenerator(Len,"NUL") RandomGenerator(1,"N")
    
    Random,Len , 6, 8
    pass := RandomGenerator(1,"U") RandomGenerator(Len,"NUL") RandomGenerator(1,"N")
    
    ; name
    nickname = Neil|Scott|Donnie|Dennis|Craig|Newton|Terence|Richardson|Francis|Castro|George|Horton|Pedro|Logan|Ricardo|Santos|Freddie|Moore|Thomas|Shaw|Byron|Robbins|Wallace|Greene|Noah|Mills|Benjamin|Wade|Vincent|Douglas|Seth|Sparks|James|Knight|Pete|Reese|Marshall|Burns|Justin|Riley|Marlon|Larson|Clarence|Cruz|Ervin|Lamb|Lionel|Brady|Richard|Ford|Kirk|Soto|Bradford|Walton|Stanley|Harris|Leslie|Wilson|Roger|Cooper|Lester|Bryant|Bruce|Goodman|Clark|Bryan|Kristopher|Rhodes|Roosevelt|Barker|Pat|Butler|Javier|Ellis|Kerry|Ballard|Jordan|Little|Jesus|Rice|Jim|Stone|Kelvin|Carroll|Gerardo|Chandler|Marcus|Mason|Devin|Huff|Jonathan|Murphy|Louis|Swanson|Antonio|Norton|Gregg|Carr|Austin|Thompson|Johnnie|Vaughn|Tyrone|Fleming|Lewis|Duncan|Jim|Blake|Stuart|Simmons|Austin|Hoffman|Wm|Briggs|Maurice|Wade|Wade|Marshall|Sidney|Cannon|Ted|Kelley|Bryant|Harvey|Dan|Brewer|Melvin|Mitchell|Simon|Turner|Fredrick|Crawford|Allen|Henderson|Philip|Graves|Winston|Hudson|Al|Doyle|Freddie|Austin|Warren|Guzman|Marion|Schneider|Otis|Burgess|Israel|Bradley|Darin|Fuller|Robert|Carpenter|Jimmy|Pena|Tommy|Copeland|Steven|Harmon|Lowell|Conner|Jesus|Russell|Alfonso|Mcgee|Willie|Mcbride|Andre|Lawson|Francisco|Nash|Craig|Graham|Kyle|Hughes|Joel|Hernandez|Peter|Bryant|Neal|Moss|Edward|Ford|Herman|Hunter|Taylor|Osborne|Claude|Stone|Travis|Mckenzie|Clyde|Robbins|Virgil|Vargas|Jerome|Armstrong|Marcus|Ball|Reginald|Watson|Joe|Nunez|Daryl|Ramos|Nathan|Bush|Blake|Pope|Derek|Cole|Rodney|Ruiz|Gerardo|Robinson|Arturo|Ortiz|Guadalupe|Sims|Wilbert|Kennedy|Elijah|Rice|Tony|Carroll|Paul|Jennings|Byron|Simpson|Bradley|Thompson|Domingo|Schultz|Ronnie|Perry|Seth|Alvarado|Eddie|Dennis|Timothy|Larson|Antonio|Sandoval|Dominick|Reed|Miguel|Harrison|Juan|Scott|Tom|Dean|Jake|Swanson|Roland|Rodriquez|Clifford|Cohen|Sherman|Adams|Todd|Caldwell|Leslie|Stevenson|Sheldon|Hart|Lorenzo|Strickland|Jaime|Marsh|Dean|Klein|Marty|Sanchez|Frankie|Schmidt|Keith|Pierce|Darrin|Bass|Terence|Ramsey|Milton|Leonard|Loren|Moran|Alton|Chavez|Tommie|Wheeler|Pedro|Waters|Kim|Cross|Louis|Castillo|Norman|Johnson|Arnold|Frank
    StringSplit, NewName, nickname,|
    Random,Len , 1, 300
    firstname  := NewName%len%
    Random,Len , 1, 300
    secondname := NewName%len%
    ; name end
    
    mobile := 731  RandomGenerator(6,"N")

    ieObj.document.getElementById("first-name").focus()
    ieObj.document.getElementById("first-name").value 		:= firstname

    ieObj.document.getElementById("last-name").focus()
    ieObj.document.getElementById("last-name").value 		:= secondname

    ieObj.document.getElementById("user-name").focus()
    ieObj.document.getElementById("user-name").value 		:= yahooid

    ieObj.document.getElementById("domain").value 		:= "yahoo.com"

    ieObj.document.getElementById("password").focus()
    ;~ ieObj.document.getElementById("password").value			:= emailpass
    Send %emailpass%
    ;~ ieObj.document.getElementById("password").focus()

    ieObj.document.getElementById("mobile").focus()
    ieObj.document.getElementById("mobile").value			:= mobile

    ieObj.document.getElementById("month").value			:= Number(2)
    ieObj.document.getElementById("year").value			:= Number(3)
    ieObj.document.getElementById("day").value			:= Number(1)
    ieObj.document.all.male.checked := true
    
    ieObj.document.getElementById("info-form").submit()
    
    ;~ KeyWait, Enter, D
    sleep 2000
    MsgBox, 4,,Corect?
    IfMsgBox, No
    {
        ExitApp
    }
    IfMsgBox, Yes
    {
    }
    
    ; ============================
        
    ieObj.Visible:=1, ieObj.Navigate(url2), Wait2(ieObj)
    
    ieObj.document.getElementById("PvpnetAccountName").value := yahooid
    ieObj.document.getElementById("PvpnetAccountPassword").value := pass
    ieObj.document.getElementById("PvpnetAccountConfirmPassword").value := pass
    ieObj.document.getElementById("PvpnetAccountEmailAddress").value := yahooid "@yahoo.com"
    ieObj.document.getElementById("PvpnetAccountDateOfBirthDay").value := Number(1)
    ieObj.document.getElementById("PvpnetAccountDateOfBirthMonth").value := Number(2)
    ieObj.document.getElementById("PvpnetAccountDateOfBirthYear").value := Number(3)
    ieObj.document.all.PvpnetAccountTouAgree.checked := true
    ClickRegion(ieObj,Region)
    InputBox, Pic,,,,150,100,743,579,,,Security Code
    ieObj.document.getElementById("PvpnetAccountCaptcha").value := pic
    ieObj.Document.All.AccountSubmit.Click()
    new := "http://signup.leagueoflegends.com/en/signup/download"
    While ( ieObj.busy or ieObj.ReadyState != 4 or comp() != 1)
    {
        sleep 100
    }
    FileAppend %yahooid%|%pass%`n, %A_ScriptDir%\Accounts.txt
    FileAppend `nAccount: %yahooid%`nPassword: %pass%`n`nEmail: %yahooid%@yahoo.com`nEmail password: %emailpass%`n`n=======================================`n, %A_ScriptDir%\Email Information.txt
}
MsgBox All Done!!!

ExitApp

Wait2(obj,int=100) {
    While !(rs~="4{" int "}\b")
        rs.=obj.ReadyState
}

ClickRegion(obj,reg) {
    Region:=["North America","EU West","EU Nordic & East","Brasil","Turkey"
            ,"Russia","Latin America North","Latin America South"]
 
    While !((hrefObj_:=obj.document.getElementsByTagName("a"))[a_index-1].innerHtml~="ch\w{4}")
        hrefCnt++
 
    hrefObj_[hrefCnt].Click()
 
    While (Region[a_index]!=reg)
        regCnt++
 
    obj.document.getElementsByName("data[PvpnetAccount][realm]")[regCnt].Click()
}

comp()
{
	global
	new2 := ieObj.locationURL
	if new2 = %new%
	{
		return, 1
	}
	else
	{
		return, 0
	}
}

RandomGenerator(MaxLen, Mode)
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

Number(data)
{
    Random, num, % (data=1)?1:(data=2)?1:(data=3)?1950:"", % (data=1)?28:(data=2)?12:(data=3)?1990:""
    Return num
}

