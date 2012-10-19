#SingleInstance Force

Pwb := ComObjCreate("InternetExplorer.Application")
Pwb.Visible := true
Pwb.Navigate("http://www.offgamers.com/buyback.php?action=favourites_link&gcat=195&pid=24072")
iLoad(Pwb)

Loop {
   Found := false

   ComObjError(0) ;turn error reporting off
   Forms := Pwb.Document.Forms
   Loop % Forms.Length {
      Elements := Forms[A_Index-1].Elements
      If Elements["wbb_input_game_select"] ;if game select visible
         Break
      Else Sleep, 1000
   }
   Loop % Forms.Length {
      Elements := Forms[A_Index-1].Elements
      Loop % Elements.Length {
         Element := Elements.Item[A_Index-1].id
         IfInString, Element, qty_delivered
         {
            Found := true
            break
         }
      }
      If (Found = true)
         break
   }
   ComObjError(1) ;turn error reporting on
   
   If (Found = true) {
      Tables := Pwb.Document.All.Tags("Table")
      Cell := Tables[11].Rows[5].Cells[8].innerText ;grab text from page

      StringSplit, Array, Cell, `n
      Form_Number := "qty_delivered_" . Array5 ;get the form number
      Line := Array1
      StringSplit, Array, Line, %A_Space%
      Amount := Array1 ;get the max amount

      Pwb.Document.All(Form_Number).Value := Amount ;set the amount to the form
      IfWinExist ahk_class IEFrame
      { 
      WinActivate, ahk_class IEFrame
      WinWaitActive, ahk_class IEFrame
      } 
      Pause ;pause the script
   }
   Sleep, 3000 ;10 seconds
   Pwb.Refresh ;refresh webpage
   iLoad(Pwb)
}

iLoad(Pwb) { ;waits for page to load
   While (Pwb.ReadyState != 4 Or Pwb.Document.ReadyState != "Complete" Or Pwb.Busy)
      Sleep, 100
   Loop
      Sleep, 100
   Until (Pwb.ReadyState = 4 And Pwb.Document.ReadyState = "Complete" And !Pwb.Busy)
Return
}