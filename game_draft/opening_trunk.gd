class_name OpenTrunk extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var key: Sprite2D = $Key
var player_nearby = false
var key_count = 0

func _ready() -> void:
	pass
	
func _process(delta) -> void:
	if Input.is_action_just_pressed("click") and player_nearby == true:
		key.visible = false
		key_count +=1
		
	
func open_trunk():
	animation_player.play("open_trunk")
	
	
func close_trunk():
	animation_player.play("close_trunk")


#actions to notice distance to the key
func _on_picking_key_body_entered(body: Node2D) -> void:
	player_nearby = true
	pass # Replace with function body.


func _on_picking_key_body_exited(body: Node2D) -> void:
	player_nearby = false
	pass # Replace with function body.
