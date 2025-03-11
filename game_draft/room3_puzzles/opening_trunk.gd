class_name OpenTrunk extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var chest_key: Sprite2D = $Key
@export var chest_key_visible: Chest_Key  #transfer chest key visability variable 

var player_nearby = false
var is_chest_key_taken = false
var is_trunk_open = false #tracking if the trunk is open
#getting the key
func _ready() -> void:
	pass
	
	
func _process(delta) -> void:
	if Input.is_action_just_pressed("click") and player_nearby == true:
		if is_trunk_open:
			chest_key.visible = false
			is_chest_key_taken = true
		

func open_trunk():
	if is_chest_key_taken == false:
		animation_player.play("open_trunk")
		
	else:
		animation_player.play("open_trunk_no_key")
	is_trunk_open = true
	
	
func close_trunk():
	if is_chest_key_taken == false and not is_trunk_open:
		animation_player.play("close_trunk")
		is_trunk_open = true
	else:
		animation_player.play("close_trunk_no_key")
	

#actions to notice distance to the key
func _on_picking_key_body_entered(body: Node2D) -> void:
	player_nearby = true
	pass # Replace with function body.

func _on_picking_key_body_exited(body: Node2D) -> void:
	player_nearby = false
	pass # Replace with function body.
