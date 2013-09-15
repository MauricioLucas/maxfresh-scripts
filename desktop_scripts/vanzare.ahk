NumpadIns::
Clipboard := "Please start a trade by clicking ''Request a Trade'' that is situated under my avatar http://www.elitepvpers.com/forum/league-legends-trading/2644076-selling-lvl-30-whit-17k-rp-40k-ip-very-good-smurfing.html#post23119020"
send ^v
return

NumpadEnd::
Clipboard := "I will need 2 more things from you sir if you have the time."
send ^v
return

NumpadDown::
Clipboard = Under "Rate This Trade" give me +1 positive and comment. %Thisisclb%
send ^v
return

NumpadPgDn::
Clipboard := "Leave a comment that you buyed from me on this Thread http://www.elitepvpers.com/forum/league-legends-trading/2644076-selling-lvl-30-whit-17k-rp-40k-ip-very-good-smurfing.html#post23119020"
send ^v
return

NumpadLeft::
Clipboard := "paraschiv_bogdan_george@yahoo.com via Friends and Famely if posible."
send ^v
return

NumpadClear::
Clipboard := "Fl0w#rP0w#r8715"
send ^v
return

NumpadUp::
SendInput paraschiv_bogdan_george@yahoo.com
Sleep 50
send {tab}
Sleep 50
Clipboard := "Sc0b!T0r!8715"
send ^v
return

NumpadPgUp::
Clipboard := "GP730534"
send ^v
return

NumpadRight::
Clipboard = https://www.paypal.com/verified/pal=%Thisisclb%
send ^v
return

NumpadHome::
SendInput paraschiv_bogdan_george@yahoo.com
Sleep 50
send {tab}
Sleep 50
Clipboard := "Y4h3D3smxXaP"
send ^v
return


~^c::
sleep 500
Thisisclb := Clipboard
return


Esc::
ExitApp