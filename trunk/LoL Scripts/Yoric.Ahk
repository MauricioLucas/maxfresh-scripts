#NoEnv
#InstallKeybdHook
SetKeyDelay, 30, 30 ; default for sending commands

$`:: 
   IfWinNotActive, League of
      Return

   SetKeyDelay, 30, 30 ; 30ms or more seems to be good for commands
   Send, -u ; DOING THIS MAY BE AGAINST THE LOL TOS!! Do so at your own risk!
Return