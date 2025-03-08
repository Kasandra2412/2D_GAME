class_name OpenTrunk extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var chest_key: Sprite2D = $Key

var player_nearby = false
var is_chest_key_taken = false
#getting the key
func _ready() -> void:
	pass
	
	
func _process(delta) -> void:
	if Input.is_action_just_pressed("click") and player_nearby == true:
		chest_key.visible = false
		is_chest_key_taken = true
		

func open_trunk():
	if is_chest_key_taken == false:
		animation_player.play("open_trunk")
	else:
		animation_player.play("open_trunk_no_key")
	
	
func close_trunk():
	if is_chest_key_taken == false:
		animation_player.play("close_trunk")
	else:
		animation_player.play("close_trunk_no_key")

#actions to notice distance to the key
func _on_picking_key_body_entered(body: Node2D) -> void:
	player_nearby = true
	pass # Replace with function body.

func _on_picking_key_body_exited(body: Node2D) -> void:
	player_nearby = false
	pass # Replace with function body.
