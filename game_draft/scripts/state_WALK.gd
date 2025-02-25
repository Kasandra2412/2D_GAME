class_name State_WALK extends State
#serves as a blueprint for each of the states 

@export var move_speed: float = 100.0
@onready var idle: State = $"../idle"

#what happens when the player enters this state
func Enter():
	player.update_animation("walk")

#what happens when the player exits this state
func Exit():
	pass
	
func Process(_delta:float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	player.velocity = player.direction * move_speed
	
	if player.set_direction():
		player.update_animation(("walk"))
	return null
	
#what happens during the _physics_process update in this state
func Physics(_delta: float) -> State:
	return null 
	
#what happens with input events in this state
func HandleInput(_event: InputEvent) -> State:
	return null
	
