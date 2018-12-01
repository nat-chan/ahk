; 無変換   -> 英数
; 変換     -> かな

#Include IME.ahk

#Space::return ;Win+SpaceでのIME切り替えを無効
!F4::
	WinGetActiveTitle, TitleVar
	WinClose, %TitleVar%
return

sc07B::IME_SET(0)
sc079::IME_SET(1)

