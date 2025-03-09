extends StaticBody2D

signal chest_opened

var chest_key_taken = false
var in_chest_zone = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	if chest_key_taken == false:
		chest_key_taken = true
		$Chest_Key.queue_free()
		
func _on_chest_area_2_body_entered(body) -> void:
	if body.name == "Player":
		in_chest_zone = true
	pass # Replace with function body.

func _on_chest_area_2_body_exited(body) -> void:
	in_chest_zone = false
	pass # Replace with function body.
	
func _process(delta):
	if chest_key_taken == true and in_chest_zone == true:
		if Input.is_action_just_pressed("click"):
			print("Chest opened") #opens the chest
			chest_opened.emit()
