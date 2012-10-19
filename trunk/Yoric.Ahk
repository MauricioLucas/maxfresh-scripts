#NoEnv
#InstallKeybdHook
SetKeyDelay, 30, 30 ; default for sending commands

$z:: 
   IfWinNotActive, League of
      Return

   SetKeyDelay, 30, 30 ; 30ms or more seems to be good for commands
   Send, uz ; DOING THIS MAY BE AGAINST THE LOL TOS!! Do so at your own risk!
Return