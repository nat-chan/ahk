; 無変換   -> 英数
; 変換     -> かな

#Include IME.ahk

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

sc07B & a::AppsKey

sc07B & f::
    MouseGetPos, x, y, hwnd, ctrl
    WinSet, Transparent, 220, ahk_id %hwnd%
return

sc07B & g::
    MouseGetPos, x, y, hwnd, ctrl
    WinSet, Transparent, 255, ahk_id %hwnd%
return


sc07B & h::
    WinGetTitle, currentWindow, A
    IfWinExist %currentWindow%
    {
        WinSet, Style, ^0xC00000
    }
return

;sc07B & j::
;    Winset, Alwaysontop, , A
;return

sc07B & WheelUp::WheelTrans(10)
sc07B & WheelDown::WheelTrans(-10)

;sc07B::IME_SET(0)
;sc079::IME_SET(1)
vk1A::IME_SET(0)
vk16::IME_SET(1)
sc71::a
sc71::b

+0::|

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