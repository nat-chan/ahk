#InstallKeybdHook

var := 1

test(){
	global var
	var := var + 1
	MsgBox, %var%
}
test()
test()
test()
