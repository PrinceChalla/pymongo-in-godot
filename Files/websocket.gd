extends Node2D


var SOCKET_URL ="ws://localhost:5000"
var client = WebSocketPeer.new()

func _ready():
	#client.connect("connection_closed", self, "on_connection_closed")
	#client.connect("connection_closed", self, "on_connection_closed")
	#client.connect("connection_closed", self, "on_connection_closed")
	#client.connect("connection_closed", self, "on_connection_closed")
	"""client.connection_established.connect(_on_connection_established)
	client.connection_closed.connect(_on_connection_closed)
	client.connection_error.connect(_on_connection_error)
	client.data_recieved.connect(_on_data_recieved)"""
	client.connect("connection_established", Callable(self, "_on_connection_established"))
	
	var error = client.connect_to_url(SOCKET_URL)
	if error != OK:
		print("Unable to connect")
	
func _on_connection_established():
	pass
	
func _on_connection_closed():
	pass

func _on_data_recieved():
	pass
	
func _on_connection_error():
	pass
