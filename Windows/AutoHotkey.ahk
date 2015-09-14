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
; Easy typing of German Characters: ä, Ä, ö, Ö, ü, Ü and ß
; For the umlaut letters, type the letter you want, followed by '' (two single quotes)
; for ß type sz
:c*:A''::{ASC 0196}
:c*:a''::{ASC 0228}
:c*:O''::{ASC 0214}
:c*:o''::{ASC 0246}
:c*:U''::{ASC 0220}
:c*:u''::{ASC 0252}
:c*:sz::{ASC 0223}
; ====================================================================
