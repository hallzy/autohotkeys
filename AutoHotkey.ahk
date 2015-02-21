; ====================================================================
; Clicks the mouse when it stops moving
#persistent
coordmode, mouse, screen

mousegetpos, sx, sy

settimer, check, 250
return

check:
sleep, 200
mousegetpos, cx, cy
if (cx != sx or cy != sy)
{
  ; mouse has moved, calculate by how much
  if (cx > (sx+10) or cx < (sx-10) or cy > (sy+10) or cy < (sy-10))
  {
    sleep, 200
    mousegetpos, cxx, cyy
    if (cx == cxx and cy == cyy)
    {
       MouseClick, left, cx, cy ; Click the mouse
       mousegetpos, sx, sy ; get new mouse position
    }
  }
}
return
; ====================================================================

; ====================================================================
; When Numpad 5 is pressed with caps lock off left click the mouse
vk0C::
mousegetpos, x, y
MouseClick, left, x, y
return
; ====================================================================

; ====================================================================
; When Numpad 6 is pressed with caps lock off right click the mouse
NumpadRight::
mousegetpos, x, y
MouseClick, right, x, y
return
; ====================================================================

; ====================================================================
; When Numpad 4 is pressed with caps lock off double click the mouse
NumpadLeft::
mousegetpos, x, y
MouseClick, left, x, y
MouseClick, left, x, y
return
; ====================================================================

; ====================================================================
; alt+f1 toggles the script off and on
!F1::
Pause
Suspend
return
; ====================================================================

; ====================================================================
;disable caps lock and make it a backspace
SetCapsLockState, AlwaysOff
Capslock::esc
; ====================================================================

; ====================================================================
; windows+g opens a new google tab
#g::
Run www.google.ca
return
; ====================================================================

; ====================================================================
; windows+s opens opens my startup windows.. gmail pandora and confluence
#s::
Run www.gmail.com
Run www.pandora.com
return
; ====================================================================

; ====================================================================
; ctrl+alt+n opens new notepad
^!n::
IfWinExist Untitled - Notepad
  WinActivate
else
  Run Notepad
return
; ====================================================================
