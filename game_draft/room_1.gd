extends Area2D

@export var key_name: String = "gold_key"  # Unique key identifier

signal key_picked_up(key_name)  # Signal for when key is collected

func _ready():
	connect("body_entered", _on_body_entered)  # Connect signal

func _on_body_entered(body):
	if body.name == "Player":  # Check if player touches key
		key_picked_up.emit(key_name)  # Emit signal
		queue_free()  # Remove key from scene 
