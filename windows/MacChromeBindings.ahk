#IfWinActive, ahk_exe chrome.exe
{
	!LButton::Send ^{LButton}
	!<+N::Send ^+{N}
	![::Send !{Left}
	!]::Send !{Right}
}