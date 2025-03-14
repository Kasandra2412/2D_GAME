extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
var player_nearby = false
var entered = false
var door_opened = false
@export var chest: Chest
@onready var audio: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var audio_activate : AudioStream = preload("res://room3_puzzles/creaking-door-41706.mp3")


func _process(delta) -> void:
	if entered == true and door_opened == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene_to_file("res://exit_room.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func open_door():
	if chest.is_chest_open == true:
		animation_player.play("open_door")
		audio.stream = audio_activate
		audio.play()
		await get_tree().create_timer(3.0).timeout  # Waits 3 seconds
		audio.stop()
		door_opened = true


func _on_door_area_to_leave_body_entered(body: PhysicsBody2D) -> void:
	entered = true # Replace with function body.
