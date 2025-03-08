extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var door_key: Sprite2D = $Key
var player_nearby = false
var once = 0

func _ready():
	pass


func _process(delta) -> void:
	if Input.is_action_just_pressed("click") and player_nearby == true:
		door_key.visible = false
		

func chest_opened() -> void:
	if once == 0:
		animation_player.play("open_chest")
		once += 1
	
	

func _on_chest_area_body_entered(body: Node2D) -> void:
	player_nearby = true
	pass # Replace with function body.


func _on_chest_area_body_exited(body: Node2D) -> void:
	player_nearby = false
	pass # Replace with function body.
