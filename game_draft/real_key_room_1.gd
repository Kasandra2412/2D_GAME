class_name Door_Key extends Node2D
@onready var door_key: Sprite2D = $Door_key
var is_picked_up = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
			is_picked_up = true
			door_key.queue_free() 
