extends Node2D
@onready var door_key: Sprite2D = $"Door_key"


func _on_Area2D_body_entered(_body):
	print("Body entered!")  
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass  

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass 
