; Remap Windows keys
LWin::return
RWin::return
#Tab::Send {LWin}

; Text editing
;;; Alt/Opt + ?
;;;;; Alt+Up/Down behavior is difficult to mimick
<#Up::Send {Up}
<#Down::Send {Down}
<#Left::Send ^{Left}
<#Right::Send ^{Right}
+<#Left::Send +^{Left}
+<#Right::Send +^{Right}
<#BS::Send ^{BS}
<#Del::Send ^{Del}

;;; Cmd + ?
<!Up::Send ^{Home}
<!Down::Send ^{End}
<!Left::Send {Home}
<!Right::Send {End}
+<!Up::Send +^{Home}
+<!Down::Send +^{End}
+<!Left::Send +{Home}
+<!Right::Send +{End}
<!BS::Send +{Home}{BS}

; Bring back window functionality
<#<!Up::Send #{Up}
<#<!Down::Send #{Down}
<#<!Left::Send #{Left}
<#<!Right::Send #{Right}