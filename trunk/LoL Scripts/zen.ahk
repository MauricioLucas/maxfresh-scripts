f1::
Loop
{
sleep 50
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\Enter.bmp
if ErrorLevel
   continue
ControlClick, x%outx% y%outy%,ahk_class ApolloRuntimeContentWindow,,LEFT,,NAPos
Loop
{
sleep 50
ImageSearch, outx, outy, 0, 0, 1680, 1050, d:\zen.bmp
if ErrorLevel
   continue
ControlClick, x%outx% y%outy%,ahk_class ApolloRuntimeContentWindow,,LEFT,,NAPos
break
}
break
}
return