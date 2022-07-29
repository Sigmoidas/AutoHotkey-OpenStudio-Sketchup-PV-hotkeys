#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetTitleMatchMode, 2
#+^p::
If WinActive("SketchUp") 
    {
    WinMenuSelectItem, , , Extensions, OpenStudio User Scripts, Alter or Add Model Elements, Add Photovoltaics
    SendInput, {Tab}
    SendInput, {Tab}
    SendInput, 0.13
    }

Return

#+^o::
If WinActive("SketchUp") 
    {
    WinMenuSelectItem, , , Extensions, OpenStudio User Scripts, Alter or Add Model Elements, Remove Photovoltaics
    ;WinMenuSelectItem, , , Extensions, OpenStudio, Preferences
    }
Return

#+^l::
If WinActive("SketchUp") 
    {
    WinMenuSelectItem, , , Extensions, OpenStudio User Scripts, Alter or Add Model Elements, Remove Orphan Photovoltaics
    ;WinMenuSelectItem, , , Extensions, OpenStudio, Preferences
    }
Return

;#+^e::
#+e::
If WinActive("SketchUp") 
    {
    WinMenuSelectItem, , , File, Export, 2D Graphic...
    ;SendInput, test.png
    SendInput, {Tab}
    SendInput, {Tab}
    SendInput, {Tab}
    SendInput, {Enter}
    SendInput, {Tab}
    SendInput, 2222
    SendInput, {Tab}
    SendInput, 1293
    SendInput, {Enter}
    }

If WinActive("Acrobat") 
    {
    ;MsgBox, Acrobat is Active
    SendInput, {Alt}
    SendInput, f
    SendInput, t
    SendInput, t
    Sleep, 100
    SendInput, {Alt Down}{Up}{Up}{Alt Up}
    }

Return
