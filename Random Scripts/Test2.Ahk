
PostClick(x,y,win="A") { ; assumes 'win' is the active window if no window title is specified

  lParam := x & 0xFFFF | (y & 0xFFFF) << 16
  PostMessage, 0x201, , % lParam, , %win% ;WM_LBUTTONDOWN
  PostMessage, 0x202, , % lParam, , %win% ;WM_LBUTTONUP
 
}
F1::
{
PostLeftClick(x1219,y722, hwnd) {
;// x,y relative to the CLIENT AREA of the window (not including border and caption bar)

   PostMessage, 0x201, 0x0001, ((y<<16)^x), , ahk_id%hwnd%         ;WM_LBUTTONDOWN:=0x201
   PostMessage, 0x202 , 0, ((y<<16)^x), , ahk_id%hwnd%               ;WM_LBUTTONUP:=0x202
}
}
