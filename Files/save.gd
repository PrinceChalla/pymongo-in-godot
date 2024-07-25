extends Node2D


var DIR = OS.get_executable_path().get_base_dir()
var interpreter_path = DIR.path_join("PythonFiles/venv/Scripts/python")
var script_path = DIR.path_join("PythonFiles/gdmongo_save_file.py")
var save_dictionary =str( {"name":"prince"})

func _ready():
	if !OS.has_feature("standalone"): # if NOT exported version
		interpreter_path = ProjectSettings.globalize_path("res://PythonFiles/venv/Scripts/python.exe")
		script_path = ProjectSettings.globalize_path("res://PythonFiles/gdmongo_save_file.py")
	
	save(save_dictionary)

func save(save_dictionary):
	var err = OS.execute(interpreter_path, [script_path,save_dictionary])
	print(err)
