; Remap Windows keys
LWin::return
RWin::return
#Tab::Send {LWin}

; Disable LAlt where possible
LAlt::return

; Cut/Copy/Paste
<!c::Send ^{c} ; Copy
<!v::Send ^{v} ; Paste
<!x::Send ^{x} ; Cut

; General
!o::Send ^{o}  ; Open
<!n::Send ^{n} ; New
<!s::Send ^{s} ; Save
<!<+s::Send ^+{s} ; Save as
<!p::Send ^{p}  ; Print
<!a::Send ^{a} ; Select all
<!f::Send ^{f} ; Find

; Text editing
<!b::Send ^{b} ; Bold
<!i::Send ^{i} ; Italicize
<!u::Send ^{u} ; Underline

; Browser features
<!l::Send ^{l}  ; Focus location bar
<!r::Send ^{r} ; Reload
<!<+r::Send ^+{r} ; Flush reload
<+<!j::Send ^{j} ; Reload

<!t::Send ^{t} ; New tab
<!<+t::Send ^+{t} ; Reopen closed tab
<!<+n::Send ^+{n} ; Incognito window

; Window management
<!w::Send ^{w} ; Close tab
<!<+w::Send ^+{w} ; Close window
<!q::Send !{F4} ; Close window

; Undo/Redo
<!z::Send ^{z} ; Undo
<!y::Send ^{y} ; Redo
<!<+z::Send ^+{z} ; Redo

; Navigation
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

; Coding
<!/::Send ^{/}

; Zoom
!-::Send ^{-} ; Zoom out
!=::Send ^{=} ; Zoom in
<!<+=::Send ^+{=} ; Zoom in

; Other Mac behavior
!H::WinMinimize, A
<#`;::Send ... ; Horizontal ellipse

; Mouse bindings
XButton1::WinMinimize, A 
XButton2::MButton

; Horizontal scrolling
; #MaxHotkeysPerInterval 200
; <+WheelDown::WheelRight
; <+WheelUp::WheelLeft