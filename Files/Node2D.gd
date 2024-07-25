extends Node2D


var DIR = OS.get_executable_path().get_base_dir()
var interpreter_path = DIR.path_join("PythonFiles/venv/Scripts/python.exe")
var script_path = DIR.path_join("PythonFiles/notify.py")


func _ready():
	if !OS.has_feature("standalone"): # if NOT exported version
		interpreter_path = ProjectSettings.globalize_path("res://PythonFiles/venv/Scripts/python")
		script_path = ProjectSettings.globalize_path("res://PythonFiles/notify.py")
	
	
	
	notify("Godot", "Notify", "Godot is awesome!")	
	
func notify(title="",subtitle="",body=""):
	var err = OS.execute(interpreter_path, [script_path, title, subtitle, body])
	var err2 = OS.shell_open (script_path)
	print(err)
	print(err2)
