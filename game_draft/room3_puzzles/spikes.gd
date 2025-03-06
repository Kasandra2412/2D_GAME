class_name Spikes extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var collision: CollisionShape2D = $StaticBody2D/CollisionShape2D


var spikes_open = false

func _ready() -> void:
	loop_spikes()# Replace with function body.
	
func loop_spikes():
	while true:
		animation_player.play("close")
		await get_tree().create_timer(5.5).timeout
		spikes_open = false
		collision.set_deferred("monitoring", false)
		
		
		animation_player.play("open")
		await get_tree().create_timer(1.5).timeout
		spikes_open = true
		collision.set_deferred("monitoring", true)
		
		
	
