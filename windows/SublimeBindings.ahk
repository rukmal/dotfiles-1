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

	; Restore other Mac hotkeys
	<^<!G::Send !{F3}
	<+<!L::Send ^+{L}
	<+<!P::Send ^+{P}
}