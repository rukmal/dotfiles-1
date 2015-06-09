#IfWinActive, ahk_exe sublime_text.exe
{
	; Remap Alt+Num back to Alt+Num (globally mapped to Ctrl+Num)
	<!1::Send !{1}
	<!2::Send !{2}
	<!3::Send !{3}
	<!4::Send !{4}
	<!5::Send !{5}
	<!6::Send !{6}
	<!7::Send !{7}
	<!8::Send !{8}
	<!9::Send !{9}
	<!0::Send !{0}

	; Clicking!
	!LButton::Send ^{LButton}

	; Restore other Mac hotkeys
	<^<!g::Send !{F3}
	<+<!l::Send ^+{l}
	<+<!p::Send ^+{p}
	<!t::Send ^{p}
	<#<!f::Send ^{h} ; Find and replace
	<^<#Enter::Send ^!{Enter} ; Replace all

	<+<!d::Send ^+{d}
	<^<!Up::Send ^+{Up}
	<^<!Down::Send ^+{Down}
 }
