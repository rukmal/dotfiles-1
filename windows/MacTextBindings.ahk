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

#IfWinActive, ahk_exe chrome.exe
<!w::Send ^{w}
<!t::Send ^{t}
<!<+t::Send ^+{t}
<!1::Send ^{1}
<!2::Send ^{2}
<!3::Send ^{3}
<!4::Send ^{4}
<!5::Send ^{5}
<!6::Send ^{6}
<!7::Send ^{7}
<!8::Send ^{8}
<!9::Send ^{9}
<!0::Send ^{0}