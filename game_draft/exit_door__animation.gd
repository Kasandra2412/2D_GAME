class_name Door_Opened extends Node2D
@onready var animation_player: AnimationPlayer = $DungeonObjectsDungeon/AnimationPlayer
var player_nearby = false
#@export var is_key_picked_up: Door_Key =
@onready var real_key_room_1: Door_Key = $"../real key room 1" 
var door_opened = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#checks if the key is picked up and if it is it will open the door
func _process(delta: float) -> void:
	if player_nearby == true and real_key_room_1.is_picked_up == true:
		if Input.is_action_just_pressed("click"):
			open_door()
			door_opened = true
			

#plays the animation
func open_door()-> void:
	animation_player.play("opening door")
	

#checks to see if the player entered
func _on_enterable_area_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		player_nearby = true 
	pass # Replace with function body.
