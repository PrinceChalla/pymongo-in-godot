extends Node2D


var DIR = OS.get_executable_path().get_base_dir()
var interpreter_path = DIR.path_join("PythonFiles/venv/bin/python3.7")
var script_path = DIR.path_join("PythonFiles/notify.py")


func _ready():
	if !OS.has_feature("standalone"): # if NOT exported version
		interpreter_path = ProjectSettings.globalize_path("res://PythonFiles/venv/Scripts/python.exe")
		script_path = ProjectSettings.globalize_path("res://PythonFiles/w3schools.py")
	browse()
	#notify("Godot", "Notify", "Godot is awesome!")
func browse():
	var err = OS.execute(interpreter_path, [script_path])
	print(err)
	
func notify(title="", subtitle="", body=""):
	var err = OS.execute(interpreter_path, [script_path, title, subtitle, body])
	print(err)
