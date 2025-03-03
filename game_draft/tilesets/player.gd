extends CharacterBody2D

class_name Player

@export var speed: int = 200

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var camera = $Camera2D

var movable = true

func _ready():
	if NavigationManager.has_signal("on_trigger_player_spawn"):
		NavigationManager.on_trigger_player_spawn.connect(_on_spawn)

func _on_spawn(position: Vector2, direction: String):
	global_position = position
	animation_player.play("move_" + direction)
	animation_player.stop()
