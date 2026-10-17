# XEMU Commodore MEGA65 Symbolic Keyboard Mapping for Windows

## *TLDR; what you type on your PC keyboard will be what you get on your Xemu Mega65*

AFIK, XEMU only supports positional keyboard mapping for MEGA65 and C65.  While the keyboard configuration can be changed, whole keys need to be moved, you cannot use the existing functionality to map unshifted, shifted, mega, and control settings separately.

Using an AutoHotkey script, keys can be remapped specifically including shifted state that triggers, and resulting shifted state.

This script works for my purposes, what I'm used to with my PC keyboard and using VICE C64 and C128.  Now I can have a smililar feel with Xemu Mega65. You may wish to adjust for your preferences.

(Note this doesn't reassign Tab/Ctrl/Alt.  Some more work would be necessary for that.  C65 support is probably trivial, left as an exercise.)

Instructions:

1. Install [AutoHotkey](https://www.autohotkey.com/) 2.0 for Windows
2. Double click on Mega65_Symbolic.ahk file from this repository to start keyboard remap (designed to be active for Xemu Mega65 ONLY)
3. Run Xemu Mega65 with new keyboard mapping (requires default mappings -- restore/update as appropriate)

Keyboard Press |Mega65 result|Note
---------------|-------------|----
ESC            |Stop         |
Backquote      |Esc          |
Shift 2        |@            |
Shift 6        |↑            |
LShift RShift 6|Л            |Pi
Shift 7        |&            |
Shift 8        |*            |
Shift 9        |(            |
Shift 0        |)            |
Minus          |-            |unchanged
Shift -        |←            |
=              |=            |
Shift =        |+            |
[              |[            |
]              |]            |
\              |£            |
;              |;            |unchanged
:              |:            |
'              |'            |
"              |"            |
Delete         |Del          |
Insert         |Ins          |
PgUp           |Restore      |
PgDn           |Restore      |unchanged
Home           |Home         |unchanged
End            |Help         |
F1-F12         |F1-F12       |unchanged
F13-F16        |(unmapped)   |unchanged
