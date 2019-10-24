#NoEnv ; recommended for performance and compatibility with future autohotkey releases.
#UseHook
#InstallKeybdHook
#SingleInstance force

SendMode Input

;; deactivate capslock completely
SetCapslockState, AlwaysOff

;; remap capslock to hyper
;; if capslock is toggled, remap it to esc

;; note: must use tidle prefix to fire hotkey once it is pressed
;; not until the hotkey is released
~Capslock::
    ;; must use downtemp to emulate hyper key, you cannot use down in this case 
    ;; according to https://autohotkey.com/docs/commands/Send.htm, downtemp is as same as down except for ctrl/alt/shift/win keys
    ;; in those cases, downtemp tells subsequent sends that the key is not permanently down, and may be 
    ;; released whenever a keystroke calls for it.
    ;; for example, Send {Ctrl Downtemp} followed later by Send {Left} would produce a normal {Left}
    ;; keystroke, not a Ctrl{Left} keystroke
    Send {Ctrl DownTemp}{Shift DownTemp}{Alt DownTemp}
    KeyWait, Capslock
    Send {Ctrl Up}{Shift Up}{Alt Up}
    if (A_PriorKey = "Capslock") {
        Send {Esc}
    }
return

;; exchange esc and grave
Esc::`
`::Esc

;; vim navigation for asde
~Capslock & a:: Send {Home}
~Capslock & u:: Send {Home}
~Capslock & e:: Send {End}
~Capslock & p:: Send {End}

~Capslock & i:: Send {PgUp}
~Capslock & o:: Send {PgDn}
~Capslock & s:: Send ^{Left}
~Capslock & d:: Send ^{Right}

~Capslock & m:: Send {BS}
~Capslock & ,:: Send {Del}

~Capslock & n:: 
Send +^{Left}
Send {Del}
return

~Capslock & .:: 
Send +^{Right}
Send {Del}
return

~Capslock & Enter:: Send {LButton}


;; vim navigation with hyper
~Capslock & h:: Send {Left}
~Capslock & l:: Send {Right}
~Capslock & k:: Send {Up}
~Capslock & j:: Send {Down}

;; popular hotkeys with hyper
~Capslock & c:: Send ^{c}
~Capslock & v:: Send ^{v}
