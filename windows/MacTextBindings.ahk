; Remap Windows keys
LWin::return
Rwin::return

; Text editing
;;; Alt/Opt + ?
<#Up::Send ^{Up}
<#Down::Send ^{Down}
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