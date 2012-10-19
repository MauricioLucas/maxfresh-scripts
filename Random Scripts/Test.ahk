WinGet, id, list, ahk_class GxWindowClass
F1::
PostMessage, 0x201, 0x00000000, 0x02ac04b9, , ahk_id %id1% ; WM_LBUTTONDOWN at 859, 135
PostMessage, 0x201, 0x00000001, 0x02ac04b9, , ahk_id %id1%
PostMessage, 0x202, 0x00000001, 0x02ac04b9, , ahk_id %id1% ; WM_LBUTTONUP at 859, 135
PostMessage, 0x202, 0x00000000, 0x02ac04b9, , ahk_id %id1%
Return