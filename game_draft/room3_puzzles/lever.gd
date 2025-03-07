class_name Lever extends Node2D


@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	pass # Replace with function body.


func pull_lever() -> void:
	animation_player.play("lever_pulled")
	
	
func unpull_lever() ->void:
	animation_player.play("lever_unpulled")
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
