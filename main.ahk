; 無変換   -> 英数
; 変換     -> かな

#Include IME.ahk

;#Space::return ;Win+SpaceでのIME切り替えを無効

;TODO 同タイトルの複数ウィンドウを消してしまう
;https://sites.google.com/site/autohotkeyjp/reference/Window
!F4::
	WinGetActiveTitle, TitleVar 
	WinClose, %TitleVar%
return

;v1.1.05+からsuper global変数があるが仕様がわからん
;sc03a 英数(なぜかトグルする)
sc070::return ;Kana
sc029::return ;ZenkakuHankaku

^!Left::Run  , C:\bin\display.exe /rotate:90  , , Hide
^!Right::Run , C:\bin\display.exe /rotate:270 , , Hide
^!Up::Run    , C:\bin\display.exe /rotate:0   , , Hide
^!Down::Run  , C:\bin\display.exe /rotate:180 , , Hide

WheelTrans(d){
	MouseGetPos, x, y, hwnd, ctrl
	WinGet, Transparent, Transparent, ahk_id %hwnd%
	if !(Transparent is number) && d < 0{
		WinSet, Transparent, 255 - d, ahk_id %hwnd%
		return
	}
	Transparent := Transparent + d
	if (100 <= Transparent && Transparent <= 255){
		WinSet, Transparent, %Transparent%, ahk_id %hwnd%
	}
	return
}

global v := 0
;sc07B & v::MsgBox,% addX(10)
;run python "test.py" %hwnd%

sc07B & f::
	MouseGetPos, x, y, hwnd, ctrl
	WinSet, Transparent, 100, ahk_id %hwnd%
	return

sc07B & WheelUp::WheelTrans(10)
sc07B & WheelDown::WheelTrans(-10)

sc07B::IME_SET(0)
sc079::IME_SET(1)

