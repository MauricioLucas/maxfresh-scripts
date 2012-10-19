Loop read, c:\data.txt
   newdata := A_LoopReadLine "`n" newdata

FileAppend %newdata%, c:\newdata.txt