class_name PressurePlate extends Node2D


signal activated 
signal deactivated 
var bodies : int = 0
var is_active: bool = false


@onready var area_2d : Area2D = $Area2D
@onready var audio : AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var audio_activate : AudioStream = preload("res://room3_puzzles/Room3_puzzles_assets/lever-01.wav")
@onready var audio_deactivate : AudioStream = preload("res://room3_puzzles/Room3_puzzles_assets/lever-02.wav")
@onready var sprite: Sprite2D = $Sprite2D


@onready var active_sprite: Texture2D = preload("res://room3_puzzles/Room3_puzzles_assets/pressed_button.png")
@onready var deactive_sprite: Texture2D = preload("res://room3_puzzles/Room3_puzzles_assets/button.png")


func _ready() -> void:
	sprite.texture = deactive_sprite
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	bodies +=1
	check_is_activated()
	

'''
func _on_area_2d_body_exited(body: Node2D) -> void:
	bodies -=1
	check_is_activated()
	'''
	
	#there's some unecessary code here
func check_is_activated() -> void:
	if bodies > 0 and is_active ==false:
		is_active = true
		sprite.texture = active_sprite
		audio.stream = audio_activate
		audio.play()
		activated.emit()
		
		
	'''
	elif bodies <= 0 and is_active == false:
		is_active = true
		sprite.texture = deactive_sprite
		audio.stream = audio_deactivate
		audio.play()
		deactivated.emit()
	'''
		
