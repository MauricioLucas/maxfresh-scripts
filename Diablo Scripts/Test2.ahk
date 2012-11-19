F1::
Loop
{
Loop 10
{
PriceLimit := 50000         
	MouseClickDrag, left, 392, 513, 268, 513
	Send % PriceLimit-Mod(A_Index-1,11)
	Sleep 1000
}
}
F2::Pause