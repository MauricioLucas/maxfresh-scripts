f1::
{
	test("orange")
	test("apple")
	test("apple")
}

f3::Reload


test(text)
{
	static
	if (item = text)
	{
		MsgBox true %item%
	}
	else
	{
		MsgBox false %item%
	}
	sleep 2000
	item := Text
}