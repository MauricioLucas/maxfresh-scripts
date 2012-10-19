FileRead, file, C:\data.txt
file := RegExReplace(File,"m`a)  <Waypoint>(.*) (.*) (.*)</Waypoint>","<Hotspot X=""$1"" Y=""$2"" Z=""$3"" />")
FileAppend %file%, c:\newdata.txt
return

esc::
ExitApp
return