class_name Plant extends Node2D
@export var watercan: Watercan
@onready var animation_player: AnimationPlayer = $AnimationPlayer
var player_nearby=false
var is_growing = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_nearby and Input.is_action_just_pressed("click"):
		print("Flowers watered!")
		water_plant()

func _on_area_2d_body_entered(body) -> void:
	print(body)
	if body.name == "Player":
		print (player_nearby)
		player_nearby=true
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		player_nearby=false
	pass # Replace with function body.


func water_plant():
	if not is_growing:
		is_growing = true
		animation_player.play("growth")
		print("The plant is growing!")
