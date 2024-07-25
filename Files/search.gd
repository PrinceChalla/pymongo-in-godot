extends Node2D

var DIR = OS.get_executable_path().get_base_dir()
var interpreter_path = DIR.path_join("PythonFiles/venv/Scrips/python")
var script_path = DIR.path_join("PythonFiles/gdmongo_search_file.py")
var search_dictionary = {}
var query = {}
# Called when the node enters the scene tree for the first time.
func _ready():
	if !OS.has_feature("standalone"): # if NOT exported version
		interpreter_path = ProjectSettings.globalize_path("res://PythonFiles/venv/Scripts/python.exe")
		script_path = ProjectSettings.globalize_path("res://PythonFiles/gdmongo_search_file.py")
	search(query)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
			

func search(search_dictionary):
	var err = OS.execute(interpreter_path, [script_path,search_dictionary])
	print(err)
