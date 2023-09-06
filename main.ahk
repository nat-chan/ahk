#Include IME.ahk
#InstallKeybdHook #UseHook
; 無変換   -> 英数
; 変換     -> かな


;#Space::return ;Win+SpaceでのIME切り替えを無効

sc070::return ;Kana
sc029::Escape ;全角/半角トグルキー上書き

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
    if (10 <= Transparent && Transparent <= 255){
        WinSet, Transparent, %Transparent%, ahk_id %hwnd%
    }
    return
}

vk1A & a::AppsKey

vk1A & f::
    MouseGetPos, x, y, hwnd, ctrl
    WinSet, Transparent, 220, ahk_id %hwnd%
return

vk1A & g::
    MouseGetPos, x, y, hwnd, ctrl
    WinSet, Transparent, 255, ahk_id %hwnd%
return


vk1A & h::
    WinGetTitle, currentWindow, A
    IfWinExist %currentWindow%
    {
        WinSet, Style, ^0xC00000
    }
return

;vk1A & j::
;    Winset, Alwaysontop, , A
;return

vk1A & WheelUp::WheelTrans(10)
vk1A & WheelDown::WheelTrans(-10)

;sc07B::IME_SET(0)
;sc079::IME_SET(1)
; keymill hex->deci
vk1A::IME_SET(0) ;ホスト側の無変換
vk16::IME_SET(1) ;ホスト側の変換
vkFF::IME_SET(0) ;リモート接続先の変換/無変換
vk5C::IME_SET(1) ;Kana
vk1D::IME_SET(0) ;無変換
vk1C::IME_SET(1) ;変換
;sc071::a
;sc072::b

;    MsgBox % A_ThisHotkey
;;return

+0::|

^[::IME_SET(0)
^]::IME_SET(1)

;Touhou
;j::left
;k::up
;l::right
;space::down

;Mouse
AppsKey & LButton::Run , C:\bin\display.exe /rotate:90 /device:1 /toggle , , Hide
AppsKey & RButton::Run , C:\bin\display.exe /rotate:90 /device:2 /toggle , , Hide
AppsKey & WheelUp::Volume_Up
AppsKey & WheelDown::Volume_Down
AppsKey & WheelLeft::Run , C:\bin\nircmd.exe setprimarydisplay 1 , , Hide
AppsKey & WheelRight::Run , C:\bin\nircmd.exe setprimarydisplay 2 , , Hide
AppsKey & Esc::Send #^o

AppsKey::
    if(winc_presses > 0){
        winc_presses += 1
        return
    }
    winc_presses := 1
    SetTimer, Timer1, -400 ;ms
return

Timer1:
    if(winc_presses = 1){
        Send {AppsKey}
    }else if (winc_presses = 2){
        Send #p
    }else if (winc_presses = 3){
        Send #d
    }
    winc_presses := 0
return