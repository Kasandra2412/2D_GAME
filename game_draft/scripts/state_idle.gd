class_name State_idle extends State
#serves as a blueprint for each of the states 


@onready var walk: State = $"../walk" 

#what happens when the player enters this state
func Enter():
	player.update_animation("idle")

#what happens when the player exits this state
func Exit():
	pass
	
func Process(_delta:float) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null
	
#what happens during the _physics_process update in this state
func Physics(_delta: float) -> State:
	return null 
	
#what happens with input events in this state
func HandleInput(_event: InputEvent) -> State:
	return null
	
