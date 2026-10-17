#Requires AutoHotkey v2.0
#SingleInstance

; ////////////////////////////////////////////////////////////////////
; // Mega65_Symbolic.ahk - symbolic keyboard mapping for Xemu Mega65
; // Copyright (c) 2026 by David R. Van Wagner
; // MIT LICENSE
; //
; // https://github.com/davervw/xemu_mega65_symbolic_keyboard
; ////////////////////////////////////////////////////////////////////

; Only activate these hotkeys when the Xemu emulator window is active
#HotIf WinActive("ahk_exe xmega65.exe")

$<+>+-:: ; Alt -
{
    SendInput "{LShift Down}{RShift Down}{- Down}"
    KeyWait "-"
    SendInput "{- Up}{RShift Up}{LShift Up}"
}

; 1. Shift + Minus sends unshifted Backtick (`) [Left Arrow]
$+-::`

; 2. Shift + Equals sends unshifted Insert [Plus]
$+=::Insert
<!=::
{
    SendInput "{LAlt Down}{Insert Down}"
    KeyWait "="
    SendInput "{Insert Up}{LAlt Up}"
}

; 3. Shift + Semi-colon sends unshifted Quote (') [Full Colon]
+;::'

; 4. Quote sends Shift+7 Ampersand (&) [Quote]
'::&

; 5. Shift + Quote sends shifted 2 (@) [Double Quote]
+'::@

; 6. Left Bracket sends shift semi-colon (held until released) [[]
$[::
{
    SendInput "{Shift Down}{' Down}"
    KeyWait "["
    SendInput "{' Up}{Shift Up}"
}

; 7. Right Bracket sends shift + colon []]
<!$]:: ; Alt ]
{
    ; Temporarily release Alt virtually so Windows doesn't alter the output
    SendInput "{Blind}{LAlt Up}"

    ; Send destination    
    SendInput "{LAlt Down}{] Down}" 
    
    KeyWait "]"
    
    ; Cleanly lift your destination payload
    SendInput "{] Up}{LAlt Up}"
    
    ; Restore Alt state if you are still holding the physical key
    if GetKeyState("LAlt", "P")
        SendInput "{LAlt Down}"
}
+]::+] ; shift ]
]::+: ; base

; 8. Backslash sends Delete [Pound]
\::Delete

; 9. Shift 2 sends unshifted [ [@]
+2::[

; 10. Shift 6 sends unshifted Backslash [^]
+6::\ 

; 11. Shift 7 sends shifted 6 (^) [&]
+7::^

; 12. Shift 8 sends unshifted ] [*]
+8::]

; 13. Shift 9 sends shifted 8 [(]
+9::+8

; 14. Shift 0 sends shifted 9 [)]
+0::+9

; 15. Page Up sends Page Down [Restore]
PgUp::PgDn

; 16. Esc sends End [Stop]
Esc::End

; 17. Backtick (`) sends Esc [Esc]
`::Esc

; 18. Delete sends Backspace [Del]
Delete::Backspace

; 19. Insert sends Shifted Backspace [Ins]
Insert::+Backspace

; 20. End sends Page Up [Help]
End::PgUp

#HotIf ; Reset window context for any scripts below this line
