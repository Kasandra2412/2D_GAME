class_name Lever extends Node2D

signal activated 
signal deactivated

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var audio : AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var audio_activate : AudioStream = preload("res://room3_puzzles/Room3_puzzles_assets/lever-01.wav")
@onready var audio_deactivate : AudioStream = preload("res://room3_puzzles/Room3_puzzles_assets/lever-02.wav")


var is_lever_pulled = false
var player_nearby = false

func _ready() -> void:
	pass # Replace with function body.
	
# process function to play animations
func _process(delta: float) -> void:
	if player_nearby == true:
		if Input.is_action_just_pressed("click"):
			if is_lever_pulled == true:
				unpull_lever()
				audio.stream = audio_deactivate
				audio.play()
				deactivated.emit()
			elif is_lever_pulled == false:
				pull_lever()
				audio.stream = audio_activate
				audio.play()
				activated.emit()
	if Input.is_action_just_pressed("click") and player_nearby == false:
		print ("Player too far! Can't pull lever.")
		pass

#functions to pull and unpull lever
func pull_lever() -> void:
	animation_player.play("lever_pulled")
	is_lever_pulled = true
	
	
func unpull_lever() ->void:
	animation_player.play("lever_unpulled")
	is_lever_pulled = false


#signals to detect player proximity 
func _on_area_2d_2_body_entered(body: Node2D) -> void:
	print ("Player is nearby!")
	player_nearby = true
	pass # Replace with function body. # Replace with function body.


func _on_area_2d_2_body_exited(body: Node2D) -> void:
	print ("Player left!")
	player_nearby = false
	pass # Replace with function body.
