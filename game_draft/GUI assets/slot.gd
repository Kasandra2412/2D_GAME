extends PanelContainer


@export var thing : Item:
	set(value):
		thing = value 
		$Icon.texture = thing.icon
		
func _on_mouse_entered() -> void:
	if thing !=null:
		owner.set_description(thing)
