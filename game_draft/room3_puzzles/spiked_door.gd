class_name SpikedDoor extends Node2D


@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	pass # Replace with function body.



func open_door() -> void:
	animation_player.play("open_spike")
	
	
func close_door() ->void:
	animation_player.play("close_spike")
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
