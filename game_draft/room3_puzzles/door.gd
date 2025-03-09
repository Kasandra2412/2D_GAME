extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var key: Sprite2D = $Key
var is_key_taken = false
var player_nearby = false
var click = 0
var entered = false

func _process(delta) -> void:
	if Input.is_action_just_pressed("click") and player_nearby == true:
		key.visible = false
		is_key_taken = true
	
	if entered == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene_to_file("res://bacground.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func open_door():
	animation_player.play("open_door")


func _on_door_area_to_leave_body_entered(body: Node2D) -> void:
	entered = true # Replace with function body.
