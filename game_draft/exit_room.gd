extends Node2D
@onready var losing_screen: Panel = $LosingScreen
@onready var timer: Timer = $LosingScreen/Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	losing_screen.visible = false
	timer.wait_time = 1 #seconds
	timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_timer_timeout() -> void:
	losing_screen.visible = true # Replace with function body.
