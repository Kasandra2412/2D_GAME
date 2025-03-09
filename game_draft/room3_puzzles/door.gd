extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

var player_nearby = false
var entered = false
var door_opened = false

func _process(delta) -> void:
	if entered == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene_to_file("res://bacground.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func open_door():
	door_opened = true
	animation_player.play("open_door")


func _on_door_area_to_leave_body_entered(body: PhysicsBody2D) -> void:
	entered = true # Replace with function body.
