extends StaticBody2D

signal door_opened

var door_key_taken = false
var in_door_zone = false

func _on_area_2d_body_entered(body: PhysicsBody2D) -> void:
	if door_key_taken == false:
		door_key_taken = true
		$Door_Key2.queue_free()
		
func _process(delta):
	if door_key_taken==true and in_door_zone == true:
		if Input.is_action_just_pressed("click"):
			print("Door opened")
			door_opened.emit()


func _on_entering_area_to_open_door_body_entered(body: PhysicsBody2D) -> void:
	if body.name == "Player":
		in_door_zone = true
		print ("Player in door zone")
	pass # Replace with function body.


func _on_entering_area_to_open_door_body_exited(body: PhysicsBody2D) -> void:
	in_door_zone = false
	pass # Replace with function body.
