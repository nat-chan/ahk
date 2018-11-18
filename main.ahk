; 無変換   -> 英数
; 変換     -> かな

#Include IME.ahk

;#Include NICOLA.ahk

;LAlt up::
;	if(A_PriorHotkey == "*~LAlt"){
;		IME_SET(0)
;	}
;	Return

sc07B::IME_SET(0)
sc079::IME_SET(1)
;sc070::a ;Kana
;sc029::a ;半角全角

;sc07B & a::
;	if(!IME_GET()){
;		Send t
;	}else{
;		Send f
;	}
