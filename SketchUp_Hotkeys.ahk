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
