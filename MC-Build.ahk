#Requires AutoHotkey v2.0
#SingleInstance Force
directory := A_ScriptDir "\Datapack\nightrunner"
Run A_ComSpec ' /k "cd ' directory ' && mcb build"'
ExitApp