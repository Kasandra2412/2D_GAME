class_name State extends Node
#serves as a blueprint for each of the states 

static var player: Player #reference to the player that this state belongs to


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

#what happens when the player enters this state
func Enter():
	pass

#what happens when the player exits this state
func Exit():
	pass
	
func Process(_delta:float) -> State:
	return null
	
#what happens during the _physics_process update in this state
func Physics(_delta: float) -> State:
	return null 
	
#what happens with input events in this state
func HandleInput(_event: InputEvent) -> State:
	return null
	
