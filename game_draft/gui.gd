extends Control

#@export var description : NinePatchRect
@export var tutorial : NinePatchRect
@export var menu : NinePatchRect
@export var animation_player : AnimationPlayer 
@onready var quit_icon: Sprite2D = $Tutorial/QuitIcon


enum STATE {MENU, TUTORIAL}
var ui_state = STATE.MENU #default menu 

#swtiching form tutorial to menu
func _input(event):
	if event.is_action_pressed("ui_cancel") and not animation_player.is_playing():
		match ui_state:
			STATE.TUTORIAL:
				ui_state = STATE.MENU
				hide_and_show("tutorial", "menu")

	
	#function to hide and show certain options
func hide_and_show(first:String, second: String):
	animation_player.play("hide_" + first)
	await animation_player.animation_finished
	animation_player.play ("show_" + second)


#hide menu and show tutorial
func _on_tutorial_pressed() -> void:
	ui_state = STATE.TUTORIAL
	hide_and_show("menu", "tutorial")

#quiting the game
func _on_quit_pressed() -> void:
	get_tree().quit()

#starting the game
func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://bacground.tscn") #changing the scene to the opening scene



func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		match ui_state:
			STATE.TUTORIAL:
				ui_state = STATE.MENU
				hide_and_show("tutorial", "menu")


func _on_button_pressed() -> void:
	ui_state = STATE.MENU
	hide_and_show("tutorial", "menu") # Replace with function body.
